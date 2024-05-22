extends Node2D


func _on_back_menu_button_button_down():
	get_tree().change_scene_to_file("res://Scenes/Menu/MainMenu.tscn")


func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(2, linear_to_db(value))
