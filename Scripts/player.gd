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
	position.x += velocity.x * speed * delta
	position.y += velocity.y * speed * delta
