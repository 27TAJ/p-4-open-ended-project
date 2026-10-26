extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# set button to pressed and put spikes down
func _on_body_entered(body: Node2D) -> void:
	
	$"../Decor".set_cell(Vector2i(10, -6), 0 , Vector2i(3, 4))
	
	$"../Decor".set_cell(Vector2i(9, -4), 0 , Vector2i(0, 3))
	$"../Decor".set_cell(Vector2i(10, -4), 0 , Vector2i(0, 3))
	$"../Decor".set_cell(Vector2i(11, -4), 0 , Vector2i(0, 3))
	$"../Decor".set_cell(Vector2i(9, 0), 0 , Vector2i(0, 3))
	$"../Decor".set_cell(Vector2i(10, 0), 0 , Vector2i(0, 3))
	$"../Decor".set_cell(Vector2i(11, 0), 0 , Vector2i(0, 3))
