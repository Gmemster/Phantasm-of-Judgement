extends KinematicBody2D
var velocity = Vector2.ZERO
var gravity = 10

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x += 5
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 5
	else:
		velocity.x = 0
	if Input.is_action_just_pressed("ui_jump") and is_on_floor():
		velocity.y -= 250
		print('jump')
	velocity.y += gravity
	move_and_slide(velocity)
	velocity = move_and_slide(velocity, Vector2.UP)
	
	
	pass



func _process(delta):
	if Tree.AnimatedSprite.animation == ('Attack') and AnimatedSprite.get_frame == (11):
		Tree.Attack.Disable(false)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
