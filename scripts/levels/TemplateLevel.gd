extends Node2D

onready var pete = $Pete
onready var camera = $Camera2D
var forward = true
var oldCameraPosition = Vector2(0, 0)

func _ready():
	
	# proportionate to THIS specific screen
	# acho que nao tem como usar um numero quebrado como resolucao
#	$"/root".size = Vector2(683, 384)/2;

	$"/root".size = Vector2(800, 450)/2;

	# for any size
	var windowSize = OS.get_real_window_size()
	var screenSize = OS.get_screen_size()
	print(str(windowSize) + str(screenSize))
#	OS.set_window_size(screenSize)
#	$"/root".size = OS.get_window_size()/2
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
