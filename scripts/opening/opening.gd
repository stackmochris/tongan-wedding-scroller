extends Node2D
## Isolated opening presentation; story nodes retain the existing frozen schema.
const SAVE_FILE := "user://opening_demo_v1.json"
const SETTINGS_FILE := "user://opening_options.cfg"
const INK := Color("#3f3933")
const CREAM := Color("#f8efda")
const TERRA := Color("#ad6049")
const DRIVER_POS := Vector2(858, 465)
const BOARD_POS := Vector2(916, 535)
const SPEED := 220.0

var stage := "title"
var selected := ""
var node_id := ""
var player_pos := Vector2(479, 313)
var driver_pos := DRIVER_POS
var destination := Vector2.ZERO
var walking := false
var facing := 0
var clock := 0.0
var road_clock := 0.0
var english := true
var reduced_motion := false
var sound_level := 0.35
var smoke := false
var camera_mode := ""
var ui: Control
var hud: Label
var dialogue_panel: PanelContainer
var player: Sprite2D
var driver: Sprite2D
var sound: AudioStreamPlayer
var textures: Dictionary = {}
var save_error := ""
var save_file := SAVE_FILE

func _ready() -> void:
	smoke = "--opening-smoke" in OS.get_cmdline_user_args()
	if smoke:
		save_file = "user://opening_smoke_checkpoint.json"
		DirAccess.remove_absolute(save_file)
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--capture="):
			camera_mode = arg.trim_prefix("--capture=")
	for key in ["sione", "mele", "driver"]:
		textures[key] = load("res://assets/demo/characters/%s_walk.svg" % key)
	for key in ["airport_overhead", "car", "palm", "church"]:
		textures[key] = load("res://assets/opening/%s.svg" % key)
	textures["house"] = load("res://assets/demo/backgrounds/house_exterior.svg")
	player = _actor("sione")
	driver = _actor("driver")
	var layer := CanvasLayer.new()
	add_child(layer)
	ui = Control.new()
	ui.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	ui.mouse_filter = Control.MOUSE_FILTER_IGNORE
	layer.add_child(ui)
	_load_settings()
	_make_sound()
	DialogueManager.load_dialogue("res://data/dialogue/opening_demo.json")
	DialogueManager.dialogue_started.connect(_show_node)
	DialogueManager.dialogue_finished.connect(_dialogue_finished)
	get_tree().auto_accept_quit = false
	_title()
	if smoke:
		call_deferred("_smoke_test")
	elif camera_mode != "":
		call_deferred("_capture")

func _actor(key: String) -> Sprite2D:
	var actor := Sprite2D.new()
	actor.texture = textures[key]
	actor.hframes = 4
	actor.vframes = 4
	actor.offset = Vector2(0, -52)
	actor.scale = Vector2(0.8, 0.8)
	add_child(actor)
	return actor

func _clear_ui() -> void:
	hud = null
	dialogue_panel = null
	for child in ui.get_children():
		ui.remove_child(child)
		child.queue_free()

func _style(bg: Color = CREAM) -> StyleBoxFlat:
	var box := StyleBoxFlat.new()
	box.bg_color = bg
	box.border_color = TERRA
	box.set_border_width_all(2)
	box.set_corner_radius_all(14)
	box.content_margin_left = 22
	box.content_margin_right = 22
	box.content_margin_top = 16
	box.content_margin_bottom = 16
	return box

func _panel(rect: Rect2) -> VBoxContainer:
	var panel := PanelContainer.new()
	panel.position = rect.position
	panel.size = rect.size
	panel.add_theme_stylebox_override("panel", _style())
	ui.add_child(panel)
	var column := VBoxContainer.new()
	column.add_theme_constant_override("separation", 12)
	panel.add_child(column)
	return column

func _label(parent: Node, words: String, font_size: int = 24) -> Label:
	var label := Label.new()
	label.text = words
	label.add_theme_color_override("font_color", INK)
	label.add_theme_font_size_override("font_size", font_size)
	parent.add_child(label)
	return label

func _button(parent: Node, words: String, action: Callable) -> Button:
	var button := Button.new()
	button.text = words
	button.custom_minimum_size = Vector2(0, 52)
	button.add_theme_font_size_override("font_size", 22)
	button.add_theme_color_override("font_color", INK)
	button.add_theme_color_override("font_hover_color", INK)
	button.add_theme_color_override("font_focus_color", INK)
	button.add_theme_color_override("font_pressed_color", INK)
	button.add_theme_stylebox_override("normal", _style(Color("#eee1c7")))
	button.add_theme_stylebox_override("hover", _style(Color("#dfcfaa")))
	button.add_theme_stylebox_override("focus", _style(Color("#dfcfaa")))
	button.pressed.connect(action)
	parent.add_child(button)
	return button

func _title() -> void:
	stage = "title"
	_clear_ui()
	player.hide()
	driver.hide()
	var shade := ColorRect.new()
	shade.color = Color(0.07, 0.12, 0.11, 0.60)
	shade.size = Vector2(1280, 720)
	shade.mouse_filter = Control.MOUSE_FILTER_IGNORE
	ui.add_child(shade)
	var title := _label(ui, "A Wedding\nin Tonga", 70)
	title.position = Vector2(74, 170)
	title.add_theme_color_override("font_color", CREAM)
	var subtitle := _label(ui, "A language adventure", 27)
	subtitle.position = Vector2(80, 355)
	subtitle.add_theme_color_override("font_color", CREAM)
	var menu := _panel(Rect2(790, 155, 400, 420))
	_label(menu, "WELCOME", 18)
	_button(menu, "Play Now", _request_new_game).grab_focus()
	var resume := _button(menu, "Continue", _continue_game)
	resume.disabled = _read_save().is_empty()
	_button(menu, "Options", _options)
	_button(menu, "Info", _info)
	var note := _label(ui, "Opening demo • Language and cultural review pending", 17)
	note.position = Vector2(80, 660)
	note.add_theme_color_override("font_color", CREAM)
	queue_redraw()

func _request_new_game() -> void:
	if _read_save().is_empty():
		_new_game()
		return
	_clear_ui()
	var box := _panel(Rect2(340, 210, 600, 290))
	_label(box, "Start a new journey?", 32)
	_label(box, "Your opening-demo checkpoint will be replaced.", 20)
	_button(box, "Start again", _new_game).grab_focus()
	_button(box, "Back", _title)

func _new_game() -> void:
	selected = ""
	node_id = ""
	GameState.path = ""
	GameState.flags.clear()
	player_pos = Vector2(479, 313)
	driver_pos = DRIVER_POS
	destination = Vector2(479, 400)
	facing = 0
	stage = "entrance"
	road_clock = 0.0
	_world_hud("Fuaʻamotu Airport", "Arriving in Tonga…")
	_fade_in()
	_save()

func _fade_in() -> void:
	if reduced_motion or smoke:
		return
	var cover := ColorRect.new()
	cover.color = Color("#21322d")
	cover.size = Vector2(1280, 720)
	cover.mouse_filter = Control.MOUSE_FILTER_IGNORE
	ui.add_child(cover)
	var tween := create_tween()
	tween.tween_property(cover, "modulate:a", 0.0, 0.45)
	tween.tween_callback(cover.queue_free)

func _world_hud(place: String, hint: String) -> void:
	_clear_ui()
	var header := _panel(Rect2(24, 20, 550, 105))
	_label(header, place, 28)
	hud = _label(header, hint, 18)
	var menu := _button(ui, "Menu · Esc", _pause_to_title)
	menu.position = Vector2(1090, 24)
	menu.size = Vector2(165, 52)

func _pause_to_title() -> void:
	if stage != "title":
		_save()
	_title()

func _process(delta: float) -> void:
	clock += delta
	walking = false
	if stage == "entrance":
		_move_toward(Vector2(479, 400), delta)
		if player_pos.distance_to(Vector2(479, 400)) < 2.0:
			stage = "airport"
			destination = Vector2.ZERO
			_save()
	elif stage == "airport":
		var input_vector := Vector2(
			float(Input.is_physical_key_pressed(KEY_D) or Input.is_physical_key_pressed(KEY_RIGHT)) - float(Input.is_physical_key_pressed(KEY_A) or Input.is_physical_key_pressed(KEY_LEFT)),
			float(Input.is_physical_key_pressed(KEY_S) or Input.is_physical_key_pressed(KEY_DOWN)) - float(Input.is_physical_key_pressed(KEY_W) or Input.is_physical_key_pressed(KEY_UP)))
		if input_vector.length() > 0:
			destination = Vector2.ZERO
			_move_toward(player_pos + input_vector.normalized() * SPEED, delta)
		elif destination != Vector2.ZERO:
			_move_toward(destination, delta)
			if player_pos.distance_to(destination) < 2.0:
				destination = Vector2.ZERO
		player_pos.x = clampf(player_pos.x, 125, 1060)
		player_pos.y = clampf(player_pos.y, 385, 538)
		if is_instance_valid(hud):
			hud.text = "E / Enter: talk to the driver" if _near_driver() else "Arrow keys / WASD or click the path • Find your driver"
	elif stage == "boarding":
		_move_toward(BOARD_POS, delta)
		driver_pos = driver_pos.move_toward(Vector2(995, 538), SPEED * delta)
		if player_pos.distance_to(BOARD_POS) < 2.0 and driver_pos.distance_to(Vector2(995, 538)) < 2.0:
			_start_car()
	elif stage == "car":
		if not reduced_motion:
			road_clock += delta
	player.position = player_pos
	player.visible = selected != "" and stage in ["entrance", "airport", "airport_talk", "boarding"]
	driver.position = driver_pos
	driver.visible = stage in ["entrance", "airport", "airport_talk", "boarding"]
	player.frame = facing * 4 + (int(clock * 7.0) % 4 if walking and not reduced_motion else 0)
	driver.frame = 4 + (int(clock * 7.0) % 4 if not reduced_motion else 0) if stage == "boarding" else 0
	if is_instance_valid(sound):
		sound.volume_db = linear_to_db(maxf(sound_level, 0.0001))
		sound.pitch_scale = 0.75 if stage == "car" else 1.0
	queue_redraw()

func _move_toward(target: Vector2, delta: float) -> void:
	var direction := target - player_pos
	if direction.length() < 1.0:
		return
	walking = true
	if absf(direction.x) > absf(direction.y):
		facing = 1 if direction.x > 0 else 2
	else:
		facing = 0 if direction.y > 0 else 3
	player_pos = player_pos.move_toward(target, SPEED * delta)

func _near_driver() -> bool:
	return player_pos.distance_to(DRIVER_POS) < 115.0

func _unhandled_key_input(event: InputEvent) -> void:
	if not event is InputEventKey or not event.pressed or event.echo:
		return
	if event.keycode == KEY_ESCAPE:
		_pause_to_title()
	elif stage == "airport" and event.keycode in [KEY_E, KEY_ENTER, KEY_SPACE] and _near_driver():
		_talk()
		get_viewport().set_input_as_handled()

func _unhandled_input(event: InputEvent) -> void:
	if stage != "airport":
		return
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_click_world(get_global_mouse_position())
	elif event is InputEventScreenTouch and event.pressed:
		_click_world(event.position)

func _click_world(point: Vector2) -> void:
	if point.distance_to(DRIVER_POS - Vector2(0, 35)) < 70.0 and _near_driver():
		_talk()
	else:
		destination = Vector2(clampf(point.x, 125, 1060), clampf(point.y, 385, 538))

func _talk() -> void:
	stage = "airport_talk"
	destination = Vector2.ZERO
	DialogueManager.start_node("airport_who")

func _portrait(key: String) -> AtlasTexture:
	var texture := AtlasTexture.new()
	texture.atlas = textures[key]
	texture.region = Rect2(0, 0, 128, 128)
	return texture

func _show_node(node: Dictionary) -> void:
	node_id = str(node.get("node_id", ""))
	if node_id.begins_with("car_") and node_id != "car_start":
		stage = "car"
	_clear_ui()
	var top := _panel(Rect2(24, 20, 550, 86))
	_label(top, "Road to Popua" if stage == "car" else "Fuaʻamotu Airport", 26)
	var menu := _button(ui, "Menu · Esc", _pause_to_title)
	menu.position = Vector2(1090, 24)
	menu.size = Vector2(165, 52)
	var column := _panel(Rect2(36, 446, 1208, 250))
	dialogue_panel = column.get_parent() as PanelContainer
	var row := HBoxContainer.new()
	row.add_theme_constant_override("separation", 20)
	column.add_child(row)
	var portrait := TextureRect.new()
	portrait.texture = _portrait("driver")
	portrait.custom_minimum_size = Vector2(140, 140)
	portrait.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	portrait.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	row.add_child(portrait)
	var words := VBoxContainer.new()
	words.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	row.add_child(words)
	_label(words, "DRIVER", 18)
	var line := _label(words, str(node.get("line_tongan", "")), 29)
	line.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	var caption := str(node.get("line_english", ""))
	if english and caption != "" and caption != "<null>":
		var translation := _label(words, caption, 22)
		translation.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	var choices := HBoxContainer.new()
	choices.add_theme_constant_override("separation", 16)
	column.add_child(choices)
	var entries: Array = node.get("choices", [])
	for index in range(entries.size()):
		var choice: Dictionary = entries[index]
		var text := str(choice.get("tongan", "Continue"))
		if english and choice.get("caption") != null:
			text += "  ·  " + str(choice["caption"])
		var button := _button(choices, text, _choose.bind(index))
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		if node_id == "airport_who":
			var identity := "sione" if index == 0 else "mele"
			button.icon = _portrait(identity)
			button.icon_alignment = HORIZONTAL_ALIGNMENT_LEFT
			button.expand_icon = true
			button.add_theme_constant_override("icon_max_width", 48)
		if index == 0:
			button.grab_focus()
	_save()

func _choose(index: int) -> void:
	var choices: Array = DialogueManager.current_node.get("choices", [])
	if index < 0 or index >= choices.size():
		return
	var flag := str(choices[index].get("sets_flag", ""))
	if flag in ["path_sione", "path_mele"]:
		selected = flag.trim_prefix("path_")
		GameState.set_path(selected)
		player.texture = textures[selected]
		if not reduced_motion and not smoke:
			player.modulate.a = 0.0
			create_tween().tween_property(player, "modulate:a", 1.0, 0.4)
	if node_id == "car_start":
		# Boarding is a presentation transition; the selected next node starts after it.
		GameState.set_flag("in_car")
		node_id = ""
		stage = "boarding"
		_world_hud("Fuaʻamotu Airport", "Follow your driver to the car.")
		_save()
		return
	DialogueManager.choose(index)

func _start_car() -> void:
	stage = "car"
	road_clock = 0.0
	player.hide()
	driver.hide()
	DialogueManager.start_node("car_coconut")
	_fade_in()

func _dialogue_finished() -> void:
	if stage == "car":
		stage = "arrival"
		node_id = ""
		_arrival()
		_fade_in()
		_save()

func _arrival() -> void:
	_clear_ui()
	var box := _panel(Rect2(300, 420, 680, 260))
	_label(box, "Welcome to Popua, %s." % selected.capitalize(), 36)
	_label(box, "Your family is waiting. The opening demo ends here.", 22)
	_button(box, "Return to title", _pause_to_title).grab_focus()
	_button(box, "Replay opening", _request_new_game)

func _options() -> void:
	_clear_ui()
	var box := _panel(Rect2(330, 115, 620, 480))
	_label(box, "Options", 36)
	var captions := CheckButton.new()
	captions.text = "English captions"
	captions.button_pressed = english
	captions.add_theme_color_override("font_color", INK)
	captions.add_theme_color_override("font_pressed_color", INK)
	captions.add_theme_color_override("font_hover_color", INK)
	captions.add_theme_font_size_override("font_size", 24)
	captions.toggled.connect(func(value: bool): english = value; _save_settings())
	box.add_child(captions)
	var motion := CheckButton.new()
	motion.text = "Reduce motion"
	motion.button_pressed = reduced_motion
	motion.add_theme_color_override("font_color", INK)
	motion.add_theme_color_override("font_pressed_color", INK)
	motion.add_theme_color_override("font_hover_color", INK)
	motion.add_theme_font_size_override("font_size", 24)
	motion.toggled.connect(func(value: bool): reduced_motion = value; _save_settings())
	box.add_child(motion)
	_label(box, "Ambient sound", 22)
	var volume := HSlider.new()
	volume.min_value = 0
	volume.max_value = 1
	volume.step = 0.05
	volume.value = sound_level
	volume.custom_minimum_size.y = 42
	volume.value_changed.connect(func(value: float): sound_level = value; _save_settings())
	box.add_child(volume)
	_label(box, "Arrows / WASD: move • E / Enter: interact\nClick / tap: walk or talk • Esc: save and return", 18)
	_button(box, "Back", _title).grab_focus()

func _info() -> void:
	_clear_ui()
	var box := _panel(Rect2(255, 110, 770, 510))
	_label(box, "A Wedding in Tonga", 38)
	var info := _label(box, "You have arrived in Tonga for a family wedding. Meet your driver, choose Sione or Mele, and try a little Tongan on the journey to Popua.\n\nOpening demo • Working title\n\nLanguage and cultural review: DR L.V.S. All Tongan wording, clothing and cultural details await review.\n\nArt: project prototype assets. No recorded dialogue is included.\n\nYour progress is saved on this device. Restart or continue from the title screen.", 22)
	info.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_button(box, "Back", _title).grab_focus()

func _snapshot() -> Dictionary:
	var checkpoint := "airport" if stage == "entrance" else stage
	return {"version": 1, "stage": checkpoint, "path": selected,
		"node": node_id, "flags": GameState.flags.duplicate(),
		"x": player_pos.x, "y": maxf(player_pos.y, 385), "road": road_clock}

func _valid_save(data: Variant) -> bool:
	if not data is Dictionary or data.get("version") != 1:
		return false
	if not data.get("stage") in ["airport", "airport_talk", "boarding", "car", "arrival"]:
		return false
	if not data.get("path") in ["", "sione", "mele"] or not data.get("flags") is Dictionary:
		return false
	for key in ["x", "y", "road"]:
		if not (data.get(key) is float or data.get(key) is int):
			return false
		if not is_finite(float(data[key])):
			return false
	if data["stage"] in ["boarding", "car", "arrival"] and data["path"] == "":
		return false
	var saved_node: String = str(data.get("node", ""))
	if data["stage"] == "airport_talk":
		if not saved_node in ["airport_who", "airport_confirm_sione", "airport_confirm_mele", "car_start"]:
			return false
		if saved_node != "airport_who" and data["path"] == "":
			return false
	if data["stage"] == "car" and not saved_node in ["car_coconut", "car_church"]:
		return false
	return true

func _save() -> void:
	if camera_mode != "" or stage == "title":
		return
	var temporary := save_file + ".tmp"
	var file := FileAccess.open(temporary, FileAccess.WRITE)
	if file == null:
		save_error = "Could not save progress."
		push_warning(save_error)
		return
	file.store_string(JSON.stringify(_snapshot()))
	file.close()
	var error := DirAccess.rename_absolute(temporary, save_file)
	if error != OK:
		save_error = "Could not replace checkpoint (%s)." % error
		push_warning(save_error)

func _read_save() -> Dictionary:
	if camera_mode != "" or not FileAccess.file_exists(save_file):
		return {}
	var json := JSON.new()
	if json.parse(FileAccess.get_file_as_string(save_file)) != OK:
		return {}
	return json.data if _valid_save(json.data) else {}

func _continue_game() -> void:
	var data := _read_save()
	if not data.is_empty():
		_restore(data)

func _restore(data: Dictionary) -> void:
	selected = str(data["path"])
	GameState.path = selected
	GameState.flags = data["flags"].duplicate()
	stage = str(data["stage"])
	node_id = str(data.get("node", ""))
	player_pos = Vector2(clampf(float(data["x"]), 125, 1060), clampf(float(data["y"]), 385, 538))
	driver_pos = DRIVER_POS
	destination = Vector2.ZERO
	road_clock = float(data["road"])
	if selected != "":
		player.texture = textures[selected]
	if stage in ["airport_talk", "car"]:
		DialogueManager.start_node(node_id)
	elif stage == "arrival":
		_arrival()
	else:
		_world_hud("Fuaʻamotu Airport", "Follow your driver." if stage == "boarding" else "Find your driver.")

func _load_settings() -> void:
	if smoke or camera_mode != "":
		return
	var config := ConfigFile.new()
	if config.load(SETTINGS_FILE) == OK:
		english = bool(config.get_value("options", "english", true))
		reduced_motion = bool(config.get_value("options", "reduced_motion", false))
		sound_level = clampf(float(config.get_value("options", "volume", 0.35)), 0, 1)

func _save_settings() -> void:
	if smoke or camera_mode != "":
		return
	var config := ConfigFile.new()
	config.set_value("options", "english", english)
	config.set_value("options", "reduced_motion", reduced_motion)
	config.set_value("options", "volume", sound_level)
	config.save(SETTINGS_FILE)

func _make_sound() -> void:
	# Quiet original synthetic ambience, no speech or third-party recordings.
	var wav := AudioStreamWAV.new()
	wav.format = AudioStreamWAV.FORMAT_16_BITS
	wav.mix_rate = 22050
	wav.loop_mode = AudioStreamWAV.LOOP_FORWARD
	wav.loop_end = 44100
	var samples := PackedByteArray()
	samples.resize(88200)
	var random := RandomNumberGenerator.new()
	random.seed = 7
	var previous := 0.0
	for index in range(44100):
		previous = previous * 0.97 + random.randf_range(-1, 1) * 0.03
		var tone := sin(TAU * 66.0 * float(index) / 22050.0) * 0.014
		samples.encode_s16(index * 2, int((previous * 0.14 + tone) * 32767.0))
	wav.data = samples
	sound = AudioStreamPlayer.new()
	sound.stream = wav
	add_child(sound)
	if not smoke:
		sound.play()

func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		_save()
		get_tree().quit()

func _draw() -> void:
	if textures.is_empty():
		return
	if stage == "car":
		_draw_road()
	elif stage == "arrival":
		draw_texture_rect(textures["house"], Rect2(0, 0, 1280, 720), false)
	else:
		draw_texture_rect(textures["airport_overhead"], Rect2(0, 0, 1280, 720), false)
		# Separate, readable terminal text, never baked into the map texture.
		draw_string(ThemeDB.fallback_font, Vector2(340, 132), "FUAʻAMOTU • ARRIVALS", HORIZONTAL_ALIGNMENT_LEFT, -1, 21, INK)
		_draw_overhead_car()
		if stage in ["airport", "entrance", "airport_talk"] and selected == "":
			var bob := sin(clock * 14.0) * 2.0 if walking and not reduced_motion else 0.0
			var point := player_pos + Vector2(0, bob)
			draw_circle(point - Vector2(0, 58), 21, Color("#a5a7a2"))
			draw_style_box(_style(Color("#8d9591")), Rect2(point - Vector2(18, 37), Vector2(36, 34)))
			draw_line(point - Vector2(10, 6), point + Vector2(-10, 0), Color("#65716f"), 9)
			draw_line(point - Vector2(-10, 6), point + Vector2(10, 0), Color("#65716f"), 9)
			draw_rect(Rect2(point + Vector2(27, -25), Vector2(18, 25)), Color("#8e745b"))
		if stage == "airport":
			var marker := DRIVER_POS - Vector2(0, 110)
			draw_circle(marker, 17, CREAM)
			draw_string(ThemeDB.fallback_font, marker + Vector2(-5, 7), "…", HORIZONTAL_ALIGNMENT_LEFT, -1, 20, TERRA)

func _draw_overhead_car() -> void:
	draw_style_box(_style(Color("#86becd")), Rect2(890, 485, 166, 65))
	draw_rect(Rect2(932, 490, 67, 50), Color("#b8dbd7"))
	draw_line(Vector2(966, 491), Vector2(966, 540), Color("#5e91a0"), 5)
	for point in [Vector2(908, 485), Vector2(1036, 485), Vector2(908, 549), Vector2(1036, 549)]:
		draw_line(point - Vector2(9, 0), point + Vector2(9, 0), Color("#37464b"), 8)

func _draw_road() -> void:
	draw_rect(Rect2(0, 0, 1280, 720), Color("#b8dcd4"))
	draw_rect(Rect2(0, 245, 1280, 115), Color("#76b6be"))
	draw_rect(Rect2(0, 318, 1280, 200), Color("#97b778"))
	draw_rect(Rect2(0, 500, 1280, 220), Color("#626c67"))
	var shift := fmod(road_clock * 95.0, 1500.0)
	for index in range(-1, 3):
		var x := float(index) * 750.0 - shift + 850.0
		draw_texture_rect(textures["church"], Rect2(x + 220, 205, 190, 142), false)
		draw_texture_rect(textures["palm"], Rect2(x, 100, 170, 255), false)
	for index in range(-1, 12):
		var x := float(index) * 150.0 - fmod(road_clock * 230.0, 150.0)
		draw_line(Vector2(x, 584), Vector2(x + 78, 584), Color("#e7dcb6"), 6)
	var bob := sin(clock * 5.0) * 1.8 if not reduced_motion else 0.0
	var car_position := Vector2(410, 228 + bob)
	draw_texture_rect(textures["car"], Rect2(car_position, Vector2(460, 210)), false)
	# The vehicle points left. Driver is at the forward window, looking towards the road.
	draw_texture_rect_region(textures["driver"], Rect2(car_position + Vector2(128, 43), Vector2(68, 54)), Rect2(128 + 28, 0, 72, 64))
	if selected != "":
		draw_texture_rect_region(textures[selected], Rect2(car_position + Vector2(238, 43), Vector2(68, 54)), Rect2(256 + 28, 0, 72, 64))
	if node_id == "car_coconut":
		draw_string(ThemeDB.fallback_font, Vector2(44, 175), "Look for the coconut palms", HORIZONTAL_ALIGNMENT_LEFT, -1, 24, INK)
	elif node_id == "car_church":
		draw_string(ThemeDB.fallback_font, Vector2(44, 175), "A church along the road", HORIZONTAL_ALIGNMENT_LEFT, -1, 24, INK)

func _smoke_test() -> void:
	for identity in ["sione", "mele"]:
		_new_game()
		for step in range(90):
			_process(1.0 / 60.0)
		assert(stage == "airport")
		assert(selected == "")
		assert(not _near_driver())
		_click_world(Vector2(820, 455))
		for step in range(160):
			_process(1.0 / 60.0)
		assert(_near_driver())
		var interact := InputEventKey.new()
		interact.keycode = KEY_E
		interact.pressed = true
		_unhandled_key_input(interact)
		assert(node_id == "airport_who")
		_choose(0 if identity == "sione" else 1)
		assert(selected == identity and GameState.path == identity)
		assert(player.texture == textures[identity])
		_choose(0)
		assert(node_id == "car_start")
		_choose(0)
		assert(stage == "boarding")
		var boarding := _snapshot()
		assert(_valid_save(boarding))
		_restore(boarding)
		for step in range(120):
			_process(1.0 / 60.0)
		assert(stage == "car" and node_id == "car_coconut")
		var checkpoint := _snapshot()
		assert(_valid_save(checkpoint))
		assert(_read_save()["node"] == "car_coconut")
		_title()
		_continue_game()
		assert(stage == "car" and selected == identity)
		_choose(0)
		assert(node_id == "car_church")
		_title()
		_continue_game()
		assert(node_id == "car_church")
		_choose(0)
		assert(stage == "arrival")
		assert(_valid_save(_snapshot()))
		_restore(_snapshot())
		assert(stage == "arrival")
		print("OPENING PASS: ", identity)
	assert(not _valid_save({}))
	assert(not _valid_save({"version": 8}))
	english = false
	reduced_motion = true
	_new_game()
	_process(1.0)
	player_pos = DRIVER_POS
	_talk()
	_choose(1)
	assert(selected == "mele")
	_choose(0)
	_choose(0)
	_process(2.0)
	assert(stage == "car")
	var before := road_clock
	_process(1.0)
	assert(road_clock == before)
	_options()
	_info()
	_title()
	print("OPENING PASS: options, reduced motion, invalid saves, replay, menu")
	assert(save_error == "")
	var bad_save := FileAccess.open(save_file, FileAccess.WRITE)
	bad_save.store_string("{broken")
	bad_save.close()
	assert(_read_save().is_empty())
	DirAccess.remove_absolute(save_file)
	print("OPENING PASS: disk checkpoints, overwrite, Continue, corrupt-save recovery")
	get_tree().quit()

func _capture() -> void:
	if camera_mode == "options":
		_options()
	elif camera_mode == "info":
		_info()
	elif camera_mode != "title":
		_new_game()
		_process(1.0)
		player_pos = Vector2(808, 465)
		if camera_mode in ["dialogue", "car", "arrival"]:
			_talk()
		if camera_mode in ["car", "arrival"]:
			_choose(1)
			_choose(0)
			_choose(0)
			_process(2.0)
			road_clock = 1.4
		if camera_mode == "arrival":
			_choose(0)
			_choose(0)
	await get_tree().create_timer(0.6).timeout
	await RenderingServer.frame_post_draw
	get_viewport().get_texture().get_image().save_png("res://capture_%s.png" % camera_mode)
	get_tree().quit()
