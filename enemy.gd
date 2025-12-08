extends Area2D
@export var speed = 2

func _process(_delta):
	position.x -= speed
