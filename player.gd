extends Area2D

@onready var laser_1 = preload("res://laser.tscn")

func _process(_delta):
	if Input.is_action_pressed("up") and position.y > 30:
		position.y += -10
	
	if Input.is_action_pressed("down") and position.y < 500:
		position.y += 10
	
	if Input.is_action_pressed("left") and position.x > 30:
		position.x += -10
		
	if Input.is_action_pressed("right") and position.x < 300:
		position.x += 10
	
	if Input.is_action_just_pressed("shoot"):
		#make a laser
		var laser = laser_1.instantiate()
		laser.position = position
		get_parent().add_child(laser)
