extends RichTextLabel
@onready var timer: Timer = $Timer




func _on_timer_timeout():
	visible_characters += 1
