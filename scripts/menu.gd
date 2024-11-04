extends Control

func _ready() -> void:
	Global.start_music()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/intro.tscn")


func _on_settings_pressed() -> void:
	$settings/Settings.show()


func _on_exit_pressed() -> void:
	get_tree().quit()
