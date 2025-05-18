extends CharacterBody2D
@export var speed = 200
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	velocity = Vector2(0,0)
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if velocity.x != 0 and velocity.y != 0:
		velocity = velocity * speed / 1.414213562 
	else :
		velocity = velocity * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("attack"):
		print("Attacked!!!")
	
	
