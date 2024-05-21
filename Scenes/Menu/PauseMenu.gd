extends Control

var paused = false
@onready var pauseMenu = $"."


func _on_resume_button_down():
	get_tree().paused = false
	pauseMenu.hide()

func _on_quit_button_down():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menu/MainMenu.tscn")
