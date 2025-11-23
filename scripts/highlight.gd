extends ColorRect

var transparency_value = 25
var highlight_color = Color(255,255,255)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sprite_texture = get_parent().get_node("Sprite2D").texture
	self.size = sprite_texture.get_size()
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func highlight() : 
	visible = true
	set_modulate(Color(highlight_color.r, highlight_color.g, highlight_color.a))

func un_highlight() : 
	visible = false
