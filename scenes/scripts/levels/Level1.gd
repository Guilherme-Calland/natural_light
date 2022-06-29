extends "res://scenes/scripts/levels/TemplateLevel.gd"

onready var music = $Music

func _ready():
	camera.global_position = Vector2(95, -55)

func queueMusic(body):
	if not music.playing:
		music.play()
