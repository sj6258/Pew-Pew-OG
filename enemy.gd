extends Area2D

class_name enemy

@export var speed = randi_range(2,4)
@onready var explosion_boom = preload("res://explosions.tscn")
@onready var laser_prefab = preload("res://enemy_bullet.tscn")

signal enemy_killed

func _process(_delta):
	position.x -= speed


func _on_area_entered(area):
	if area is laser:
		var explosion = explosion_boom.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		queue_free()
		area.queue_free()
		enemy_killed.emit()



func _on_laser_spawn_timer_timeout() -> void:
	var laser_var = laser_prefab.instantiate()
	laser_var.position = position
	get_parent().add_child(laser_var)
