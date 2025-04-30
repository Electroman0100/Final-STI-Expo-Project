extends Button


func resume():
	get_tree().paused = false
	
func pause():
	get_tree().pressed = true
	
func testEsc():
	if Input.is_action_just_pressed("toggle_pause") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("toggle_pause") and get_tree().paused == true:
		resume()
		hide()



func _on_resume_button_pressed() -> void:
	var tree = get_tree()
	tree.paused = false  # Unpause the game
	hide()
	

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_pause"):
		print("Toggling pause")
