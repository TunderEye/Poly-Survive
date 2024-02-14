extends CharacterBody2D

@export var movement_speed : int = 750
@onready var movement_direction : Vector2 = transform.x


func _ready():
	velocity = movement_direction * movement_speed


func _process(_delta):
	move_and_slide()
