extends "res://scripts/levels/TemplateLevel.gd"

onready var music = $Music

func _ready():
	camera.global_position = Vector2(147, -85)

func queueMusic(body):
	if not music.playing:
		music.playMusic()
