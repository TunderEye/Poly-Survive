extends CharacterBody2D

var mouse_direction : Vector2


func _process(_delta):
	mouse_direction = (get_global_mouse_position() - position).normalized()
	rotation = lerp_angle(rotation, mouse_direction.angle(), 0.1)
