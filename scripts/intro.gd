extends Control

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		# Check if the Enter key was pressed
		if event.keycode == Key.KEY_ENTER:  # Use Key.ENTER instead of KEY_ENTER
			# Change to the target scene
			get_tree().change_scene_to_file("res://scenes/dress_invade.tscn")
