extends Camera2D
@export var player: CharacterBody2D
func _process(dt)->void:
	position = player.position
