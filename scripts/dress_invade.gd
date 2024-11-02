extends Node2D

@onready var faces_items = $Items/faces/face_items

func _on_clothes_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#E7ABAC")
	faces_box.bg_color = Color("#848484")
	extra_box.bg_color = Color("#646464")
	
	faces_items.hide()

func _on_faces_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#848484")
	faces_box.bg_color = Color("#E7ABAC")
	extra_box.bg_color = Color("#848484")
	
	faces_items.show()

func _on_extra_button_pressed() -> void:
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#646464")
	faces_box.bg_color = Color("#848484")
	extra_box.bg_color = Color("#E7ABAC")
	
	faces_items.hide()
