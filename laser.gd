extends Area2D

@export var speed = 25

func _process(_delta):
	position.x += speed
