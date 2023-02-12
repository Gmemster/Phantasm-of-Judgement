extends Button

func _process(delta):
	if Input.is_action_pressed('ui_select'):
		get_tree().change_scene("res://Level 1.tscn")
		
