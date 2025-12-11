extends Area2D

@onready var laser_1 = preload("res://laser.tscn")
@onready var explosion_boom = preload("res://explosions.tscn")
signal player_killed

func _process(_delta):
	if Input.is_action_pressed("up") and position.y > 30:
		position.y += -10
	
	if Input.is_action_pressed("down") and position.y < 500:
		position.y += 10
	
	if Input.is_action_pressed("left") and position.x > 30:
		position.x += -10
		
	if Input.is_action_pressed("right") and position.x < 400:
		position.x += 10
	
	if Input.is_action_just_pressed("shoot"):
		var laser_ = laser_1.instantiate()
		laser_.position = position
		get_parent().add_child(laser_)
		$AudioStreamPlayer2D.play()


func _on_area_entered(area):
	if area is enemy_laser:
		var explosion = explosion_boom.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		queue_free()
		player_killed.emit()
