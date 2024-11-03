extends Node

var dialogue_lines = [
		"Oh no! The invasion went awry and you find yourself stranded on Earth with nothing but fashionable attire and your sense of style. You must dress to evade government agents trying to capture you for experimentation.",
		"You failed to evade the government agents. ",
		"You successfully evaded the government agents with the help of a kind earthling that helps you avoid capture. It is up to you to decide whether you should remain on earth or return back to your home planet. You can dress as a human to continue exploring earth or dress in your alien form to prepare for the journey back home. "
	]
var curr_round = Global.round;
@onready var dialogue_label = $HBoxContainer/Label

var text_speed = 0.05  # Delay in seconds for each character
var is_typing = false

func _ready():
	print(curr_round)
	if curr_round == 1:
		var line = dialogue_lines[0]
		Global.round += 1
		print(line)
		await display_text(line)  # Display the line with typing effect
	#else:
		#hide_dialogue_box()  # Hide dialogue box when all lines are shown

func display_text(text: String) -> void:
	is_typing = true
	dialogue_label.text = ""  # Clear text
	var character_index = 0

	# Loop over each character in the text
	while character_index < text.length() and is_typing:
		dialogue_label.text += text[character_index]  # Append each character
		character_index += 1
		await get_tree().create_timer(text_speed).timeout  # Await the timer

	is_typing = false

func _input(event):
	if event is InputEventKey and event.is_pressed():
		if event.keycode == Key.KEY_ENTER and is_typing:
			dialogue_label.text = dialogue_lines[0]  # Show full line instantly
			is_typing = false
		else:
			get_tree().change_scene_to_file("res://scenes/dress_invade.tscn")

#func hide_dialogue_box():
	# Hide the dialogue box or signal the end of the conversation
	#visible = false
