extends Control
var dialogue_lines = [
	"In a distant galaxy, a mysterious blue and green planet called Earth has sparked the interest of your alien species. ",
	"Your superiors want you to invade the planet and investigate the earthlings to study their style.",
	"You have been chosen for this mission, but you cannot embark on your expedition without the perfect attire!"
	]
var curr_round = Global.round;
@onready var dialogue_label = $Label
var current_line_index = 0

var text_speed = 0.05  # Delay in seconds for each character
var is_typing = false

func _ready() -> void:
	show_next_line()

func show_next_line():
	if current_line_index < dialogue_lines.size():
		var line = dialogue_lines[current_line_index]
		current_line_index += 1
		display_text(line)
	else:
		get_tree().change_scene_to_file("res://scenes/dress_invade.tscn")  # Display the line with typing effect

func display_text(text: String) -> void:
	is_typing = true
	dialogue_label.text = ""
	var character_index = 0

	# Loop over each character in the text
	while character_index < text.length() and is_typing:
		dialogue_label.text += text[character_index]  # Append each character
		character_index += 1
		await get_tree().create_timer(text_speed).timeout  # Await the timer

	is_typing = false

func _input(event: InputEvent) -> void:
	if (event is InputEventKey and event.is_pressed() and event.keycode == Key.KEY_ENTER) or (event is InputEventMouseButton and event.is_pressed()):
		if is_typing:
			# Finish the current line instantly
			dialogue_label.text = dialogue_lines[current_line_index - 1]
			is_typing = false
		else:
			# Show the next line
			show_next_line()
