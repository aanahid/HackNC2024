extends Node

@onready var currentFace = null
@onready var currentBangs = null
@onready var currentHair = null
@onready var currentTop = null
@onready var currentBottom = null
@onready var currentShoes = null
@onready var currentAntenna = null
@onready var currentGlasses = null
@onready var ears = 0
@onready var tail = 0
@onready var star = 0

@onready var round = 1

@onready var background = 2 # 5 options, 2 for purple as default

var music_on = true  # This keeps track of whether music is on or off.
@onready var music = preload("res://assets/spaceybg.mp3")  # Load your music file

var audio_stream = null  # For the music audio stream

func start_music():
	if audio_stream == null:
		audio_stream = AudioStreamPlayer.new()
		audio_stream.stream = music
		add_child(audio_stream)
		audio_stream.play()
		
func toggle_music():
	print("toggle")
	music_on = !music_on  # Toggle the boolean state
	if music_on:
		audio_stream.play()
	else:
		print("music off")
		audio_stream.stop()
