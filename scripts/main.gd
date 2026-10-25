extends Node2D

func _ready() -> void:
	DialogueManager.load_dialogue("res://data/dialogue/airport.json")
	DialogueManager.start_node("airport_greeting")
	print("Main scene ready. Dialogue system stub loaded.")
