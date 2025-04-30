extends CanvasLayer

@onready var btnPlayAgain = $"Play Again"
@onready var lblResult = $lblResult
var level = "res://World/world.tscn"


func _ready():
	lblResult.text = "You Win!"
	$snd_victory.play()

func _on_play_again_pressed():
	$snd_click.play()
	get_tree().paused = false
	var _level = get_tree().change_scene_to_file(level)
	hide()

func _on_play_again_mouse_entered() -> void:
	$snd_hover.play()


func _on_btn_exit_click_end() -> void:
	get_tree().quit()
	hide()
