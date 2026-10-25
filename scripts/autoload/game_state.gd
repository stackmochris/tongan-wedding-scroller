extends Node

# Path and progression flags
var path: String = ""  # "sione" or "mele"
var flags: Dictionary = {}
var correct_streak: int = 0

func set_path(p: String) -> void:
	path = p
	flags["path"] = p

func set_flag(key: String, value = true) -> void:
	flags[key] = value

func has_flag(key: String) -> bool:
	return flags.has(key) and flags[key]

func save_game() -> void:
	# Minimal autosave stub — expand later
	var save_data = {
		"path": path,
		"flags": flags
	}
	# TODO: write to user://save.json
	print("Autosave stub: ", save_data)

func load_game() -> void:
	# TODO: load from user://save.json
	pass
