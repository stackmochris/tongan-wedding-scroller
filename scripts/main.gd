extends Node2D

var dialogue_box: CanvasLayer

func _ready() -> void:
	dialogue_box = preload("res://scenes/ui/dialogue_box.tscn").instantiate()
	add_child(dialogue_box)
	
	DialogueManager.load_dialogue("res://data/dialogue/airport.json")
	DialogueManager.start_node("airport_greeting")
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	_on_dialogue_started(DialogueManager.current_node)

func _on_dialogue_started(node: Dictionary) -> void:
	if dialogue_box:
		dialogue_box.show_node(node)
