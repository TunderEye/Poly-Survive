extends CharacterBody2D

@export var movement_speed : int = 250
var mouse_direction : Vector2
var movement_direction : Vector2


func _process(_delta):
	Gamedata.player_position = global_position
	
	
	mouse_direction = (get_global_mouse_position() - position).normalized()
	rotation = lerp_angle(rotation, mouse_direction.angle(), 0.1)
	
	
	movement_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = movement_direction * movement_speed
	move_and_slide()
