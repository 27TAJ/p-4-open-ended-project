extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(-25, 4), 0 , Vector2i(3, 4)) # Set button to pressed
	change_spikes("down")

func _on_body_exited(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(-25, 4), 0 , Vector2i(2, 4)) # Set button to unpressed
	change_spikes("up")
	
# Edit spike tiles
func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(-13, -9), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-12, -9), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-11, -9), 0 , Vector2i(0, 3))

	else:
		$"../Decor".set_cell(Vector2i(-13, -9), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-12, -9), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-11, -9), 0 , Vector2i(3, 3))
