extends CanvasLayer

@onready var speaker_label: Label = $Panel/VBox/Speaker
@onready var line_label: Label = $Panel/VBox/Line
@onready var choices_box: HBoxContainer = $Panel/VBox/Choices

func show_node(node: Dictionary) -> void:
	speaker_label.text = node.get("speaker", "")
	line_label.text = node.get("line_tongan", "")
	
	# Clear old choices
	for child in choices_box.get_children():
		child.queue_free()
	
	var choices = node.get("choices", [])
	for i in range(choices.size()):
		var btn = Button.new()
		btn.text = choices[i].get("tongan", "...")
		btn.custom_minimum_size = Vector2(280, 100)
		btn.add_theme_font_size_override("font_size", 32)
		btn.pressed.connect(_on_choice_pressed.bind(i))
		choices_box.add_child(btn)

func _on_choice_pressed(index: int) -> void:
	DialogueManager.choose(index)
