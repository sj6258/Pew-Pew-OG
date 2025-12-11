extends RichTextLabel
@onready var character_timer: Timer = $character_timer



func _on_timer_timeout():
	visible_characters += 1
	
	
	if visible_characters == 35 :
		get_tree().change_scene_to_file("res://game.tscn")

	

		
