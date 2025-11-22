extends Node2D

var tile_scene = preload("res://tile.tscn")
const GRID_OFFSET = Vector2(64,64)

func _ready() -> void:
	for x in range(4):
		for y in range(4):
			var tile = tile_scene.instantiate()
			tile.x = x
			tile.y = y
			var tile_size = tile.get_node("Sprite2D").texture.get_size()
			tile.position = GRID_OFFSET + Vector2(x * tile_size.x, y * tile_size.y)
			add_child(tile)

func on_tile_clicked(tile) : 
	print ("Recieved click from tile: ", tile.x, tile.y)	
	tile.change_tile_color()
	
func _process(delta: float) -> void:
	pass
