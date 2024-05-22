extends Node2D

func _on_button_button_down():
	get_tree().change_scene_to_file("res://Scenes/Game/Test 1.tscn")

func _on_button_2_button_down():
	$CanvasLayer/Settings.show()
	$CanvasLayer/Settings.set_process_mode(Node.PROCESS_MODE_INHERIT)
	
	$CanvasLayer/MainMenu.hide()
	$CanvasLayer/MainMenu.set_process_mode(Node.PROCESS_MODE_DISABLED)

func _on_quit_button_pressed():
	get_tree().quit()

func _on_back_menu_button_button_down():
	$CanvasLayer/Settings.hide()
	$CanvasLayer/Settings.set_process_mode(Node.PROCESS_MODE_DISABLED)
	
	$CanvasLayer/MainMenu.show()
	$CanvasLayer/MainMenu.set_process_mode(Node.PROCESS_MODE_INHERIT)

func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index('Music'), linear_to_db(value))

func _on_master_value_value_changed(value):
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index('Master'), linear_to_db(value))

func _on_sfx_value_value_changed(value):
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index('SFX'), linear_to_db(value))
