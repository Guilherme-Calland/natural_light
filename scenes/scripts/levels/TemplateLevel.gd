extends Node2D

onready var pete = $Pete
onready var camera = $Camera2D
var forward = true
var oldCameraPosition = Vector2(0,0)

func _ready():
#	$"/root".size = Vector2(512,300);
	pass

func _process(_delta):
	pete.run()

func moveCamera(_body, position):
	if forward:
		oldCameraPosition = camera.global_position
		camera.global_position = position
		pete.global_position.x += 20
	else:
		pete.global_position.x -= 20
		camera.global_position = oldCameraPosition
	forward = !forward
