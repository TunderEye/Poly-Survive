extends CharacterBody2D

var target_direction : Vector2


func _process(_delta):
	target_direction = (Gamedata.player_position - position).normalized()
	rotation = lerp_angle(rotation, target_direction.angle(), 0.1)
