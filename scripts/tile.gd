extends Node2D

var x: int
var y: int
var card_type = null
var occupied: bool = false
# var TILE_SIZE_X = 128
# var TILE_SIZE_Y = 128
var clicked_texture: Texture2D = preload("res://clicked_tile_tex.png")

func place_card(card):
	card_type = card
	occupied = true
	
func get_clicked_tile(mouse_pos):
	return Vector2(x,y)

func _on_click_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed : 
		if event.button_index == MOUSE_BUTTON_LEFT : 
			get_parent().on_tile_clicked(self)
	pass # Replace with function body.
	
func change_tile_color():
	var sprite = get_node("Sprite2D")
	sprite.texture = clicked_texture


func _on_click_area_mouse_entered() -> void:
	print ("Mouse Entered!")
	pass # Replace with function body.
