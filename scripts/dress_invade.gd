extends Node2D

@onready var clothes_items = $Items/clothes/clothes_items
@onready var faces_items = $Items/faces/face_items
@onready var extra_items = $Items/extra/extra_items

func _ready():
	Global.currentFace = $eyes2
	Global.currentShoes = $bunnyslippers
	Global.currentBangs = $pinkfront
	Global.currentHair = $pinkback
	Global.currentAntenna = $antennas2
	
	if Global.round == 1: 
		$Theme/theme1/HBoxContainer/Label.text = "You must dress to invade!"
	elif Global.round == 2: 
		$Theme/theme1/HBoxContainer/Label.text = "You must dress to evade government agents trying to capture you for experimentation."
	elif Global.round == 3:
		$Theme/theme1/HBoxContainer/Label.text = "You can dress as a human to continue exploring earth or dress in your alien form to prepare for the journey back home."

func _on_clothes_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#E7ABAC")
	faces_box.bg_color = Color("#931f4b")
	extra_box.bg_color = Color("#931f4b")
	
	clothes_items.show()
	faces_items.hide()
	extra_items.hide()

func _on_faces_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#931f4b")
	faces_box.bg_color = Color("#E7ABAC")
	extra_box.bg_color = Color("#931f4b")
	
	clothes_items.hide()
	faces_items.show()
	extra_items.hide()

func _on_extra_button_pressed() -> void:
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#931f4b")
	faces_box.bg_color = Color("#931f4b")
	extra_box.bg_color = Color("#E7ABAC")
	
	clothes_items.hide()
	faces_items.hide()
	extra_items.show()


func _on_please_pressed() -> void:
	print("clicked")
	if Global.currentTop != null: 
		$greytop.hide()
	if Global.currentTop == 1: 
		Global.currentTop = null;
	else: 
		Global.currentTop = 1
		$greytop.show()

func _on_c2_pressed() -> void:
	if Global.currentTop != null: 
		$jersey.hide()
	if Global.currentTop == 2: 
		$jersey.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 2
		$jersey.show()

func _on_c_3_pressed() -> void:
	if Global.currentTop != null: 
		$needspace.hide()
	if Global.currentTop == 3: 
		$needspace.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 3
		$needspace.show()

func _on_c_4_pressed() -> void:
	if Global.currentTop != null: 
		$spacesuit.hide()
	if Global.currentTop == 4: 
		$spacesuit.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 4
		$spacesuit.show()

func _on_c_5_pressed() -> void:
	if Global.currentTop != null: 
		$suittop.hide()
	if Global.currentTop == 5: 
		$suittop.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 5
		$suittop.show()

func _on_c_6_pressed() -> void:
	if Global.currentBottom != null: 
		Global.currentBottom.hide()
	if Global.currentBottom == $greyskirt: 
		$greyskirt.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = $greyskirt
		$greyskirt.show()

func _on_c_7_pressed() -> void:
	if Global.currentBottom != null: 
		Global.currentBottom.hide()
	if Global.currentBottom == $longskirt: 
		$longskirt.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = $longskirt
		$longskirt.show()

func _on_c_8_pressed() -> void:
	if Global.currentBottom != null: 
		Global.currentBottom.hide()
	if Global.currentBottom == $blackshorts: 
		$blackshorts.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = $blackshorts
		$blackshorts.show()

func _on_c_9_pressed() -> void:
	if Global.currentBottom != null: 
		Global.currentBottom.hide()
	if Global.currentBottom == $bluesuitpants: 
		$bluesuitpants.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = $bluesuitpants
		$bluesuitpants.show()

func _on_c_10_pressed() -> void:
	if Global.currentBottom != null: 
		Global.currentBottom.hide()
	if Global.currentBottom == $blackpants: 
		$blackpants.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = $blackpants
		$blackpants.show()

func _on_c_11_pressed() -> void:
	if Global.currentShoes != null: 
		Global.currentShoes.hide()
	if Global.currentShoes == $bunnyslippers: 
		$bunnyslippers.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = $bunnyslippers
		$bunnyslippers.show()

func _on_c_12_pressed() -> void:
	if Global.currentShoes != null: 
		Global.currentShoes.hide()
	if Global.currentShoes == $grayshoes: 
		$grayshoes.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = $grayshoes
		$grayshoes.show()

func _on_c_13_pressed() -> void:
	if Global.currentShoes != null: 
		Global.currentShoes.hide()
	if Global.currentShoes == $boots: 
		$boots.hide()
		Global.currentShoes = null;
	else:
		Global.currentShoes = $boots
		$boots.show()

func _on_c_14_pressed() -> void:
	if Global.currentShoes != null: 
		Global.currentShoes.hide()
	if Global.currentShoes == $blueshoes: 
		$blueshoes.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = $blueshoes
		$blueshoes.show()

func _on_c_15_pressed() -> void:
	if Global.currentShoes != null: 
		Global.currentShoes.hide()
	if Global.currentShoes == $blackshoes: 
		$blackshoes.hide()
		Global.currentShoes = null;
	else:
		Global.currentShoes = $blackshoes
		$blackshoes.show()

func _on_f_1_pressed() -> void:
	if Global.currentFace != null: 
		Global.currentFace.hide()
	if Global.currentFace == $eyes: 
		$eyes.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = $eyes
		$eyes.show()

func _on_f_2_pressed() -> void:
	if Global.currentFace != null: 
		Global.currentFace.hide()
	if Global.currentFace == $eyes2: 
		$eyes2.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = $eyes2
		$eyes2.show()

func _on_f_3_pressed() -> void:
	if Global.currentFace != null: 
		Global.currentFace.hide()
	if Global.currentFace == $bigeyes: 
		$bigeyes.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = $bigeyes
		$bigeyes.show()

func _on_f_4_pressed() -> void:
	if Global.currentBangs != null: 
		Global.currentBangs.hide()
	if Global.currentBangs == $bluefront: 
		$bluefront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = $bluefront
		$bluefront.show()

func _on_f_5_pressed() -> void:
	if Global.currentBangs != null: 
		Global.currentBangs.hide()
	if Global.currentBangs == $pinkfront: 
		$pinkfront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = $pinkfront
		$pinkfront.show()

func _on_f_6_pressed() -> void:
	if Global.currentBangs != null: 
		Global.currentBangs.hide()
	if Global.currentBangs == $purplefront: 
		$purplefront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = $purplefront
		$purplefront.show()

func _on_f_7_pressed() -> void:
	if Global.currentHair != null: 
		Global.currentHair.hide()
	if Global.currentHair == $blueback: 
		$blueback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = $blueback
		$blueback.show()

func _on_f_8_pressed() -> void:
	if Global.currentHair != null: 
		Global.currentHair.hide()
	if Global.currentHair == $pinkback: 
		$pinkback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = $pinkback
		$pinkback.show()

func _on_f_9_pressed() -> void:
	if Global.currentHair != null: 
		Global.currentHair.hide()
	if Global.currentHair == $purpleback: 
		$purpleback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = $purpleback
		$purpleback.show()

func _on_e_1_pressed() -> void:
	if Global.currentAntenna != null: 
		Global.currentAntenna.hide()
	if Global.currentAntenna == $antennas2: 
		$antennas2.hide()
		Global.currentAntenna = null;
	else:
		Global.currentAntenna = $antennas2
		$antennas2.show()

func _on_e_2_pressed() -> void:
	if Global.currentAntenna != null: 
		Global.currentAntenna.hide()
	if Global.currentAntenna == $singleant: 
		$singleant.hide()
		Global.currentAntenna = null;
	else:
		Global.currentAntenna = $singleant
		$singleant.show()

func _on_e_3_pressed() -> void:
	$ear.visible = !$ear.visible
	
func _on_e_4_pressed() -> void:
	$tail.visible = !$tail.visible

func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/cutscene.tscn")

func _on_e_5_pressed() -> void:
	if Global.currentGlasses != null: 
		Global.currentGlasses.hide()
	if Global.currentGlasses == $glasses: 
		$glasses.hide()
		Global.currentGlasses = null;
	else:
		Global.currentGlasses = $glasses
		$glasses.show()

func _on_e_6_pressed() -> void:
	if Global.currentGlasses != null: 
		Global.currentGlasses.hide()
	if Global.currentGlasses == $sunglasses: 
		$sunglasses.hide()
		Global.currentGlasses = null;
	else:
		Global.currentGlasses = $sunglasses
		$sunglasses.show()

func _on_e_7_pressed() -> void:
	$star.visible = !$star.visible

func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$AudioStreamPlayer.play() 
		print("Music ON")
	else:
		$AudioStreamPlayer.stop()
		print("Music OFF")
