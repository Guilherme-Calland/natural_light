extends AudioStreamPlayer

var songs = {
	0: "res://audio/almost_june.mp3",
	1: "res://audio/atoms.mp3",
	2: "res://audio/flora.mp3",
	3: "res://audio/indian_yellow.mp3",
	4: "res://audio/luminous.mp3",
	5: "res://audio/natural_light.mp3",
	6: "res://audio/nobody_knows.mp3",
	7: "res://audio/rolling_like_a_ball.mp3",
	8: "res://audio/swordfish.mp3",
	9: "res://audio/temple_white.mp3",
	10: "res://audio/underwater.mp3",
	11: "res://audio/wind_song.mp3"
}

func _ready():
	var random_generator = RandomNumberGenerator.new()
	random_generator.randomize()
	var random_value = random_generator.randi_range(0,11)
	print(random_value)
	stream = load(songs[random_value])

