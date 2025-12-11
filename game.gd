extends Node2D

@onready var enemy_s = preload("res://enemy.tscn")

var score = 0

func _ready():
	_update_ui()

func _process(_delta):
	pass
	
func _on_spawn_timer_timeout():
	var enemy = enemy_s.instantiate()
	var random_y = randi_range(40,500)
	enemy.position = Vector2(1050,random_y)
	enemy.enemy_killed.connect(on_enemy_killed)
	get_parent().add_child(enemy)

func _update_ui():
	$game_ui/score.text = "Score: " + str(score)
	
func on_enemy_killed():
	score += 10
	_update_ui()


func _on_player_player_killed():
	$restart_timer.start()


func _on_restart_timer_timeout():
	get_tree().reload_current_scene()
