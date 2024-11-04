extends Control

func _ready() -> void:
	if !Global.music_on:
		$ColorRect/HBoxContainer/VBoxContainer/Panel/CheckButton.set_pressed_no_signal(false)

func _on_x_pressed() -> void:
	$".".hide()

func _on_yellow_pressed() -> void:
	Global.set_background_variable(1)

func _on_purple_pressed() -> void:
	Global.set_background_variable(2)

func _on_street_pressed() -> void:
	Global.set_background_variable(3)

func _on_street_2_pressed() -> void:
	Global.set_background_variable(4)

func _on_space_pressed() -> void:
	Global.set_background_variable(5)

func _on_check_button_toggled(toggled_on: bool) -> void:
	Global.toggle_music()
