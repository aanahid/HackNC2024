extends Node2D

@onready var clothes_items = $Items/clothes/clothes_items
@onready var faces_items = $Items/faces/face_items
@onready var extra_items = $Items/extra/extra_items

var currt = null
var currb = null
var currg = null
var currs = null
var currf = null
var currbangs = null
var currh = null
var curra = null

var background3 = preload("res://assets/backgrounds/citystreet.png")
var background4 = preload("res://assets/backgrounds/street.png")
var background5 = preload("res://assets/backgrounds/spacebg.jpg")
	
func _ready():
	Global.music = preload("res://assets/alien.mp3")
	Global.stop_music()
	if Global.music_on:
		Global.start_music()
		
	Global.connect("background_changed", Callable(self, "_on_background_changed"))
	
	Global.currentFace = 2
	Global.currentShoes = 1
	Global.currentBangs = 2
	Global.currentHair = 2
	Global.currentAntenna = 1
	Global.currentBottom = null
	Global.currentTop = null
	Global.currentGlasses = null
	Global.ears = 0
	Global.tail = 0
	Global.star = 0
	
	currs = $bunnyslippers
	currf = $eyes2
	currbangs = $pinkfront
	currh = $pinkback
	curra = $antennas2
	
	if Global.round == 1: 
		$Theme/theme1/HBoxContainer/Label.text = "Dress to invade!"
	elif Global.round == 2: 
		$Theme/theme1/HBoxContainer/Label.text = "Dress to evade capture!"
	elif Global.round == 3:
		$Theme/theme1/HBoxContainer/Label.text = "Dress to your heart's desire!"
		
	_on_background_changed(Global.background)

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
		currt.hide()
	if Global.currentTop == 1: 
		Global.currentTop = null
		currt = null;
	else: 
		Global.currentTop = 1
		currt = $greytop
		$greytop.show()

func _on_c2_pressed() -> void:
	if Global.currentTop != null: 
		currt.hide()
	if Global.currentTop == 2: 
		$jersey.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 2
		currt = $jersey
		$jersey.show()

func _on_c_3_pressed() -> void:
	if Global.currentTop != null: 
		currt.hide()
	if Global.currentTop == 3: 
		$needspace.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 3
		currt = $needspace
		$needspace.show()

func _on_c_4_pressed() -> void:
	if Global.currentTop != null: 
		currt.hide()
	if Global.currentTop == 4: 
		$spacesuit.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 4
		currt = $spacesuit
		$spacesuit.show()

func _on_c_5_pressed() -> void:
	if Global.currentTop != null: 
		currt.hide()
	if Global.currentTop == 5: 
		$suittop.hide()
		Global.currentTop = null;
	else: 
		Global.currentTop = 5
		currt = $suittop
		$suittop.show()

func _on_c_6_pressed() -> void:
	if Global.currentBottom != null: 
		currb.hide()
	if Global.currentBottom == 1: 
		$greyskirt.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = 1
		currb = $greyskirt
		$greyskirt.show()

func _on_c_7_pressed() -> void:
	if Global.currentBottom != null: 
		currb.hide()
	if Global.currentBottom == 2: 
		$longskirt.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = 2
		currb = $longskirt
		$longskirt.show()

func _on_c_8_pressed() -> void:
	if Global.currentBottom != null: 
		currb.hide()
	if Global.currentBottom == 3: 
		$blackshorts.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = 3
		currb = $blackshorts
		$blackshorts.show()

func _on_c_9_pressed() -> void:
	if Global.currentBottom != null: 
		currb.hide()
	if Global.currentBottom == 4: 
		$bluesuitpants.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = 4
		currb = $bluesuitpants
		$bluesuitpants.show()

func _on_c_10_pressed() -> void:
	if Global.currentBottom != null: 
		currb.hide()
	if Global.currentBottom == 5: 
		$blackpants.hide()
		Global.currentBottom = null;
	else: 
		Global.currentBottom = 5
		currb = $blackpants
		$blackpants.show()

func _on_c_11_pressed() -> void:
	if Global.currentShoes != null: 
		currs.hide()
	if Global.currentShoes == 1: 
		$bunnyslippers.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = 1
		currs = $bunnyslippers
		$bunnyslippers.show()

func _on_c_12_pressed() -> void:
	if Global.currentShoes != null: 
		currs.hide()
	if Global.currentShoes == 2: 
		$grayshoes.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = 2
		currs = $grayshoes
		$grayshoes.show()

func _on_c_13_pressed() -> void:
	if Global.currentShoes != null: 
		currs.hide()
	if Global.currentShoes == 3: 
		$boots.hide()
		Global.currentShoes = null;
	else:
		Global.currentShoes = 3
		currs = $boots
		$boots.show()

func _on_c_14_pressed() -> void:
	if Global.currentShoes != null: 
		currs.hide()
	if Global.currentShoes == 4: 
		$blueshoes.hide()
		Global.currentShoes = null;
	else: 
		Global.currentShoes = 4
		currs = $blueshoes
		$blueshoes.show()

func _on_c_15_pressed() -> void:
	if Global.currentShoes != null: 
		currs.hide()
	if Global.currentShoes == 5: 
		$blackshoes.hide()
		Global.currentShoes = null;
	else:
		Global.currentShoes = 5
		currs = $blackshoes
		$blackshoes.show()

func _on_f_1_pressed() -> void:
	if Global.currentFace != null: 
		currf.hide()
	if Global.currentFace == 1: 
		$eyes.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = 1
		currf = $eyes
		$eyes.show()

func _on_f_2_pressed() -> void:
	if Global.currentFace != null: 
		currf.hide()
	if Global.currentFace == 2: 
		$eyes2.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = 2
		currf = $eyes2
		$eyes2.show()

func _on_f_3_pressed() -> void:
	if Global.currentFace != null: 
		currf.hide()
	if Global.currentFace == 3: 
		$bigeyes.hide()
		Global.currentFace = null;
	else:
		Global.currentFace = 3
		currf = $bigeyes
		$bigeyes.show()

func _on_f_4_pressed() -> void:
	if Global.currentBangs != null: 
		currbangs.hide()
	if Global.currentBangs == 1: 
		$bluefront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = 1
		currbangs = $bluefront
		$bluefront.show()

func _on_f_5_pressed() -> void:
	if Global.currentBangs != null: 
		currbangs.hide()
	if Global.currentBangs == 2: 
		$pinkfront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = 2
		currbangs = $pinkfront
		$pinkfront.show()

func _on_f_6_pressed() -> void:
	if Global.currentBangs != null: 
		currbangs.hide()
	if Global.currentBangs == 3: 
		$purplefront.hide()
		Global.currentBangs = null;
	else:
		Global.currentBangs = 3
		currbangs = $purplefront
		$purplefront.show()

func _on_f_7_pressed() -> void:
	if Global.currentHair != null: 
		currh.hide()
	if Global.currentHair == 1: 
		$blueback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = 1
		currh = $blueback
		$blueback.show()

func _on_f_8_pressed() -> void:
	if Global.currentHair != null: 
		currh.hide()
	if Global.currentHair == 2: 
		$pinkback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = 2
		currh = $pinkback
		$pinkback.show()

func _on_f_9_pressed() -> void:
	if Global.currentHair != null: 
		currh.hide()
	if Global.currentHair == 3: 
		$purpleback.hide()
		Global.currentHair = null;
	else:
		Global.currentHair = 3
		currh = $purpleback
		$purpleback.show()

func _on_e_1_pressed() -> void:
	if Global.currentAntenna != null: 
		curra.hide()
	if Global.currentAntenna == 1: 
		$antennas2.hide()
		Global.currentAntenna = null;
	else:
		Global.currentAntenna = 1
		curra = $antennas2
		$antennas2.show()

func _on_e_2_pressed() -> void:
	if Global.currentAntenna != null: 
		curra.hide()
	if Global.currentAntenna == 2: 
		$singleant.hide()
		Global.currentAntenna = null;
	else:
		Global.currentAntenna = 2
		curra = $singleant
		$singleant.show()

func _on_e_3_pressed() -> void:
	if Global.ears: 
		Global.ears = 0
	else: 
		Global.ears = 1
	$ear.visible = !$ear.visible
	
func _on_e_4_pressed() -> void:
	if Global.tail: 
		Global.tail = 0
	else: 
		Global.tail = 1
	$tail.visible = !$tail.visible

func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/cutscene.tscn")

func _input(event):
	if (event is InputEventKey and event.is_pressed() and event.keycode == Key.KEY_ENTER):
		get_tree().change_scene_to_file("res://scenes/cutscene.tscn")

func _on_e_5_pressed() -> void:
	if Global.currentGlasses != null: 
		currg.hide()
	if Global.currentGlasses == 1: 
		$glasses.hide()
		Global.currentGlasses = null;
	else:
		Global.currentGlasses = 1
		currg = $glasses
		$glasses.show()

func _on_e_6_pressed() -> void:
	if Global.currentGlasses != null: 
		currg.hide()
	if Global.currentGlasses == 2: 
		$sunglasses.hide()
		Global.currentGlasses = null;
	else:
		Global.currentGlasses = 2
		currg = $sunglasses
		$sunglasses.show()

func _on_e_7_pressed() -> void:
	if Global.star: 
		Global.star = 0
	else: 
		Global.star = 1
	$star.visible = !$star.visible

func _on_check_button_toggled(toggled_on: bool) -> void:
	Global.toggle_music()

func _on_settings_pressed() -> void:
	$setting_icon/settings/CanvasLayer/Settings.show()
	
func _on_background_changed(new_value):
	if Global.background == 1: 
		$imgbackground.hide()
		$background.color = Color("#ebdca1")
	elif Global.background == 2: 
		$imgbackground.hide()
		$background.color = Color("5d2f4a")
	elif Global.background == 3: 
		$imgbackground.show()
		$imgbackground.texture = background3
	elif Global.background == 4: 
		$imgbackground.show()
		$imgbackground.texture = background4
	elif Global.background == 5: 
		$imgbackground.show()
		$imgbackground.texture = background5
