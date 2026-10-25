extends Node

signal dialogue_finished

var current_node: Dictionary = {}
var dialogue_data: Dictionary = {}

func load_dialogue(path: String) -> void:
	var file = FileAccess.open(path, FileAccess.READ)
	if file:
		var json = JSON.new()
		var err = json.parse(file.get_as_text())
		if err == OK:
			dialogue_data = json.data
		file.close()

func start_node(node_id: String) -> void:
	if dialogue_data.has(node_id):
		current_node = dialogue_data[node_id]
		# TODO: emit to UI
		print("Starting node: ", node_id)

func choose(index: int) -> void:
	if current_node.has("choices") and index < current_node.choices.size():
		var choice = current_node.choices[index]
		if choice.has("sets_flag") and choice.sets_flag:
			GameState.set_flag(choice.sets_flag)
		if choice.has("next") and choice.next:
			start_node(choice.next)
		else:
			dialogue_finished.emit()
