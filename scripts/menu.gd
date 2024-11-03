extends Control

func _ready() -> void:
	Global.start_music()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/intro.tscn")


func _on_settings_pressed() -> void:
	$settings/Panel.visible = !$settings/Panel.visible


func _on_exit_pressed() -> void:
	get_tree().quit()


#func _on_yellow_pressed() -> void:
	#$background.color = Color("ebdca1")
#
#func _on_purple_pressed() -> void:
	#$background.color = Color("5d2f4a")

func _on_check_button_toggled(toggled_on: bool) -> void:
	Global.toggle_music()
