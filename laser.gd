extends Area2D

class_name laser

@export var speed = 25

func _process(_delta):
	position.x += speed
