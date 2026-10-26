extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(-6,-3), 3, Vector2i(1,4)) # Change button to pressed
	$"../Walls".set_cell(Vector2i(-1,-6), 2, Vector2i(21,3)) # Open room 1 door
	$"../Walls".set_cell(Vector2i(0,-6), 2, Vector2i(22,3)) # Open room 1 door


func _on_body_exited(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(-6,-3), 3, Vector2i(0,4)) # Change button to unpressed
	$"../Walls".set_cell(Vector2i(-1,-6), 2, Vector2i(17,3)) # Open room 1 door
	$"../Walls".set_cell(Vector2i(0,-6), 2, Vector2i(18,3)) # Open room 1 door
