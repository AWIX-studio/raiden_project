extends CharacterBody2D

@export var speed = 250 # How fast the player will move (pixels/sec).

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
		
	var x = velocity.x
	var y = velocity.y
	if x == 1 and y == 1:
		$Icon.texture = load("res://Scripts/Characters/1/2.png")
	elif x == 1 and y == 0:
		$Icon.texture = load("res://Scripts/Characters/1/3.png")	
	elif x == 1 and y == -1:
		$Icon.texture = load("res://Scripts/Characters/1/4.png")
	elif x == 0 and y == 1:
		$Icon.texture = load("res://Scripts/Characters/1/1.png")
	elif x == 0 and y == -1:
		$Icon.texture = load("res://Scripts/Characters/1/5.png")
	elif x == -1 and y == 1:
		$Icon.texture = load("res://Scripts/Characters/1/8.png")
	elif x == -1 and y == 0:
		$Icon.texture = load("res://Scripts/Characters/1/7.png")
	elif x == -1 and y == -1:
		$Icon.texture = load("res://Scripts/Characters/1/6.png")
		
	if velocity.length() > 0:
		if Input.is_action_pressed("sprint"):
			velocity = velocity.normalized() * speed * 1.5
		else:
			velocity = velocity.normalized() * speed
	
	
	move_and_slide()


