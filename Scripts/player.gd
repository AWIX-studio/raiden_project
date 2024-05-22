extends CharacterBody2D

@export var speed = 250 # How fast the player will move (pixels/sec).

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
	
	# Animation
	var x = velocity.x
	var y = velocity.y
	$AnimationPlayer.speed_scale = 1
	if x == 1 and y == 1:
		$AnimationPlayer.play('Walk2')
	elif x == 1 and y == 0:
		$AnimationPlayer.play('Walk3')
	elif x == 1 and y == -1:
		$AnimationPlayer.play('Walk4')
	elif x == 0 and y == 1:
		$AnimationPlayer.play('Walk1')
	elif x == 0 and y == -1:
		$AnimationPlayer.play('Walk5')
	elif x == -1 and y == 1:
		$AnimationPlayer.play('Walk8')
	elif x == -1 and y == 0:
		$AnimationPlayer.play('Walk7')
	elif x == -1 and y == -1:
		$AnimationPlayer.play('Walk6')
	elif x == 0 and y == 0:
		$AnimationPlayer.speed_scale = 100
		
	if velocity.length() > 0:
		if Input.is_action_pressed("sprint"):
			velocity = velocity.normalized() * speed * 1.5
			$AnimationPlayer.speed_scale = 2
		else:
			velocity = velocity.normalized() * speed
			$AnimationPlayer.speed_scale = 1
	
	move_and_slide()


