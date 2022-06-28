extends KinematicBody2D


onready var animationPlayer = $AnimationPlayer
onready var sprite = $Sprite
var motion = Vector2(0,0)
export var speed = 50

func _input(_event):
	if Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = speed
		animationPlayer.play("walking")
		sprite.flip_h = false
	elif Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -speed
		animationPlayer.play("walking")
		sprite.flip_h = true
	else:
		motion.x = 0
		animationPlayer.play("idle")

func run():
	move_and_slide(motion, Vector2(0,-1))
