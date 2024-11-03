extends Node

var dialogue_lines = [
		"Oh no! The invasion went awry and you find yourself stranded on Earth with nothing but fashionable attire and your sense of style. You must dress to evade government agents trying to capture you for experimentation.",
		"You failed to evade the government agents. For what feels like an eternity, scientists take notes on your lack of fashion.",
		"You successfully evaded the government agents with the help of a kind earthling that helps you avoid capture. It is up to you to decide whether you should remain on earth or return back to your home planet. You can dress as a human to continue exploring earth or dress in your alien form to prepare for the journey back home. ",
		"You continue to slay everyday. The universe is stunned at your amazing fashion. Good job!"
	]
var curr_round = Global.round;
@onready var dialogue_label = $HBoxContainer/Label

var text_speed = 0.05  # Delay in seconds for each character
var is_typing = false

func _ready():
	if Global.currentTop != null:
		if Global.currentTop == 1:
			$"../../greytop".show()
		if Global.currentTop == 2:
			$"../../jersey".show()
		if Global.currentTop == 3:
			$"../../needspace".show()
		if Global.currentTop == 4:
			$"../../spacesuit".show()
		if Global.currentTop == 5:
			$"../../suittop".show()
	if Global.currentBottom != null:
		if Global.currentBottom == 1:
			$"../../greyskirt".show()
		if Global.currentBottom == 2:
			$"../../longskirt".show()
		if Global.currentBottom == 3:
			$"../../blackshorts".show()
		if Global.currentBottom == 4:
			$"../../bluesuitpants".show()
		if Global.currentBottom == 5:
			$"../../blackpants".show()
	if Global.currentShoes != null:
		if Global.currentShoes == 1:
			$"../../bunnyslippers".show()
		if Global.currentShoes == 2:
			$"../../grayshoes".show()
		if Global.currentShoes == 3:
			$"../../boots".show()
		if Global.currentShoes == 4:
			$"../../blueshoes".show()
		if Global.currentShoes == 5:
			$"../../blackshoes".show()
	if Global.currentFace != null:
		if Global.currentFace == 1:
			$"../../eyes".show()
		if Global.currentFace == 2:
			$"../../eyes2".show()
		if Global.currentFace == 3:
			$"../../bigeyes".show()
	if Global.currentBangs != null:
		if Global.currentBangs == 1:
			$"../../bluefront".show()
		if Global.currentBangs == 2:
			$"../../pinkfront".show()
		if Global.currentBangs == 3:
			$"../../purplefront".show()
	if Global.currentHair != null:
		if Global.currentHair == 1:
			$"../../blueback".show()
		if Global.currentHair == 2:
			$"../../pinkback".show()
		if Global.currentHair == 3:
			$"../../purpleback".show()
	if Global.currentAntenna != null:
		if Global.currentAntenna == 1:
			$"../../antennas2".show()
		if Global.currentAntenna == 2:
			$"../../singleant".show()
	if Global.ears:
		$"../../ear".show()
	if Global.tail:
		$"../../tail".show()
	if Global.star:
		$"../../star".show()
	if Global.currentGlasses != null:
		if Global.currentGlasses == 1:
			$"../../glasses".show()
		if Global.currentGlasses == 2:
			$"../../sunglasses".show()
		
	print(curr_round)
	if curr_round == 1:
		var new_texture = preload("res://assets/backgrounds/citystreet.png")
		$"../../background".texture = new_texture
		var line = dialogue_lines[0]
		print(line)
		await display_text(line)
	if curr_round == 2:
		if Global.currentAntenna == null and Global.tail == 0:
			var new_texture = preload("res://assets/backgrounds/street.png")
			$"../../background".texture = new_texture
			var line = dialogue_lines[2]
			print(line)
			await display_text(line)
		else:
			var new_texture = preload("res://assets/backgrounds/testtube.png")
			$"../../background".texture = new_texture
			var line = dialogue_lines[1]
			print(line)
			await display_text(line)
		
	if curr_round == 3:
		if Global.currentAntenna == null and Global.tail == 0:
			var new_texture = preload("res://assets/backgrounds/street.png")
			$"../../background".texture = new_texture
			
		else:
			var new_texture = preload("res://assets/backgrounds/spacebg.jpg")
			$"../../background".texture = new_texture
		var line = dialogue_lines[3]
		print(line)
		await display_text(line)
	
	
		
	Global.round += 1  # Display the line with typing effect
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
			if Global.round == 1:
				dialogue_label.text = dialogue_lines[0]
			if Global.round == 2:
				if Global.currentAntenna == null and Global.tail == 0:
					dialogue_label.text = dialogue_lines[2]
				else:
					dialogue_label.text = dialogue_lines[1]
			if Global.round == 3:
				dialogue_label.text = dialogue_lines[3]
				
			is_typing = false
		else:
			if curr_round == 3:
				Global.round = 1
				get_tree().change_scene_to_file("res://scenes/menu.tscn")
				return
			get_tree().change_scene_to_file("res://scenes/dress_invade.tscn")

#func hide_dialogue_box():
	# Hide the dialogue box or signal the end of the conversation
	#visible = false
