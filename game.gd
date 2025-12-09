extends Node2D

@onready var enemy_s = preload("res://enemy.tscn")

func _ready():
	pass

func _process(_delta):
	pass
	
func _on_spawn_timer_timeout():
	var enemy = enemy_s.instantiate()
	var random_y = randi_range(40,500)
	enemy.position = Vector2(1050,random_y)
	get_parent().add_child(enemy)
