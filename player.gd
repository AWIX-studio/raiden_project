extends CharacterBody2D

@export var speed = 250 # How fast the player will move (pixels/sec).

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
<<<<<<< Updated upstream
func _process(_delta):
=======
func _process(delta):
>>>>>>> Stashed changes
	velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	if velocity.length() > 0:
		if Input.is_action_pressed("sprint"):
			velocity = velocity.normalized() * speed * 1.5
		else:
			velocity = velocity.normalized() * speed

<<<<<<< Updated upstream
	move_and_slide()
=======
	position += velocity * delta
>>>>>>> Stashed changes
