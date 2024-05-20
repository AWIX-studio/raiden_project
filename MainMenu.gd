extends Node2D

func _on_button_button_down():
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_button_2_button_down():
	get_tree().change_scene_to_file("res://Settings.tscn")
