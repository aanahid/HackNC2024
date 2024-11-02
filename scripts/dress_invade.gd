extends Node2D

@onready var clothes_items = $Items/clothes/clothes_items
@onready var faces_items = $Items/faces/face_items
@onready var extra_items = $Items/extra/extra_items

func _on_clothes_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#E7ABAC")
	faces_box.bg_color = Color("#848484")
	extra_box.bg_color = Color("#646464")
	
	clothes_items.show()
	faces_items.hide()
	extra_items.hide()

func _on_faces_button_pressed():
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#848484")
	faces_box.bg_color = Color("#E7ABAC")
	extra_box.bg_color = Color("#848484")
	
	clothes_items.hide()
	faces_items.show()
	extra_items.hide()

func _on_extra_button_pressed() -> void:
	var clothes_box = $Items/clothes.get_theme_stylebox("panel")
	var faces_box = $Items/faces.get_theme_stylebox("panel")
	var extra_box = $Items/extra.get_theme_stylebox("panel")
	
	clothes_box.bg_color = Color("#646464")
	faces_box.bg_color = Color("#848484")
	extra_box.bg_color = Color("#E7ABAC")
	
	clothes_items.hide()
	faces_items.hide()
	extra_items.show()
