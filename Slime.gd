extends KinematicBody2D

var direction = Vector2.RIGHT
var velocity = Vector2.ZERO
var life = 1

onready var ledgeCheckRight = $LedgeCheckRight
onready var ledgeCheckLeft = $LedgeCheckLeft
onready var sprite: = $AnimatedSprite

func _physics_process(delta):
	var found_wall = is_on_wall()
	var found_ledge = not ledgeCheckRight.is_colliding() and not ledgeCheckLeft.is_colliding()
	
	if found_wall or found_ledge:
		direction *= -1
	else:
		direction *= 1
		
		
	
	velocity = direction * 25
	move_and_slide(velocity, Vector2.UP)

