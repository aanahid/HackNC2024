extends Control

func _ready() -> void:
	AudioPlayer.play()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/intro.tscn")
