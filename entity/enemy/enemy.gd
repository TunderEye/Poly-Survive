extends CharacterBody2D

@export var movement_speed : int = 265
var target_direction : Vector2


func _process(_delta):
	target_direction = (Gamedata.player_position - position).normalized()
	
	
	rotation = lerp_angle(rotation, target_direction.angle(), 0.1)
	
	
	velocity = target_direction * movement_speed
	move_and_slide()
