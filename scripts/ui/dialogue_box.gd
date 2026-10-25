extends CanvasLayer

# Set to false before final demo / post to hide all English
var show_english_for_review: bool = true

@onready var speaker_label: Label = $Panel/VBox/Speaker
@onready var line_label: Label = $Panel/VBox/Line
@onready var english_label: Label = $Panel/VBox/English
@onready var choices_box: HBoxContainer = $Panel/VBox/Choices

func show_node(node: Dictionary) -> void:
	speaker_label.text = node.get("speaker", "")
	line_label.text = node.get("line_tongan", "")
	
	var eng = node.get("line_english", "")
	if show_english_for_review and eng:
		english_label.text = eng
		english_label.visible = true
	else:
		english_label.visible = false
	
	# Clear old choices
	for child in choices_box.get_children():
		child.queue_free()
	
	var choices = node.get("choices", [])
	for i in range(choices.size()):
		var btn = Button.new()
		var tongan = choices[i].get("tongan", "...")
		var caption = choices[i].get("caption", "")
		if show_english_for_review and caption:
			btn.text = tongan + "\n" + caption
		else:
			btn.text = tongan
		btn.custom_minimum_size = Vector2(320, 140)
		btn.add_theme_font_size_override("font_size", 28)
		btn.pressed.connect(_on_choice_pressed.bind(i))
		choices_box.add_child(btn)

func _on_choice_pressed(index: int) -> void:
	DialogueManager.choose(index)
