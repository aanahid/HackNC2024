extends Control

func _ready() -> void:
	Global.music = preload("res://assets/spaceybg.mp3")
	if Global.music_on:
		Global.start_music()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/intro.tscn")


func _on_settings_pressed() -> void:
	$CanvasLayer/Settings.show()


func _on_exit_pressed() -> void:
	get_tree().quit()
