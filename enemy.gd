extends Area2D
@export var speed = randi_range(2,4)
@onready var explosion_boom = preload("res://explosions.tscn")

func _process(_delta):
	position.x -= speed


func _on_area_entered(area):
	if area is laser:
		var explosion = explosion_boom.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		queue_free()
		area.queue_free()
