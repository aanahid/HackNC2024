extends Control


func _on_x_pressed() -> void:
	$".".hide()

func _on_yellow_pressed() -> void:
	Global.background = 1

func _on_purple_pressed() -> void:
	Global.background = 2

func _on_street_pressed() -> void:
	Global.background = 3

func _on_street_2_pressed() -> void:
	Global.background = 4

func _on_space_pressed() -> void:
	Global.background = 5
