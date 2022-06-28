extends KinematicBody2D


onready var animationPlayer = $AnimationPlayer
onready var sprite = $Sprite
var motion = Vector2(0,0)
export var speed = 50
var ducking = true


func _input(_event):
	if Input.is_action_pressed("duck"):
		ducking = true
	else:
		ducking = false
	
	if Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		if not ducking:
			motion.x = speed
			animationPlayer.play("walking")
		elif ducking:
			motion.x = speed/4
			animationPlayer.play("duckWalking")
		sprite.flip_h = false
	elif Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		if not ducking:
			motion.x = -speed
			animationPlayer.play("walking")
		elif ducking:
			motion.x = -speed/4
			animationPlayer.play("duckWalking")
		sprite.flip_h = true
	else:
		motion.x = 0
		if not ducking:
			animationPlayer.play("idle")
		elif ducking:
			animationPlayer.play("ducking")
	

func run():
	move_and_slide(motion, Vector2(0,-1))
