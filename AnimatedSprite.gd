extends AnimatedSprite



func _process(delta):
	if Input.is_action_pressed("ui_left"):
		set_flip_h(true)
		print('left')
	
	if Input.is_action_pressed('ui_right'):
		set_flip_h(false)
		print('right')
		

	if Input.is_action_pressed("animation"):
		set_playing(true)
	else:
		set_playing(false)
		set_animation('Walking')
		set_frame(0)
		print("frame 0")\
		
		
