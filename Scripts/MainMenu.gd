extends Node2D

func _on_button_button_down():
	get_tree().change_scene_to_file("res://Scenes/Game/Test 1.tscn")


func _on_button_2_button_down():
	get_tree().change_scene_to_file("res://Scenes/Menu/SettingsMenu.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
