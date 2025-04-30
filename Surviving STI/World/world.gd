class_name Game
extends Node

var _pause_menu: Node = null  # Holds the pause menu reference

func _ready():
	_pause_menu = get_node_or_null("InterfaceLayer/PauseMenu")
	if _pause_menu:
		_pause_menu.hide()
	else:
		print("⚠️ PauseMenu not found in this scene.")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_pause"):
		var tree := get_tree()
		tree.paused = not tree.paused
		if tree.paused:
			if _pause_menu:
				_pause_menu.show()
		else:
			if _pause_menu:
				_pause_menu.hide()
		get_tree().root.set_input_as_handled()
