extends Node

var paused = false
@onready var pauseMenu = $"../CanvasLayer/CenterContainer/PauseMenu"

func _ready():
	pauseMenu.hide()

func pauseMenuFunc():
	if paused:
		get_tree().paused = false
		pauseMenu.hide()
	else:
		get_tree().paused = true
		pauseMenu.show()
	paused = !paused
	

func _process(_delta):
	if Input.is_action_just_pressed("escape"):
		pauseMenuFunc()


