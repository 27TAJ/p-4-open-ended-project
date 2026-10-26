extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_body_entered(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(2,-18), 3, Vector2i(1,4)) # Change button to pressed
	change_spikes("down") # Change spikes to down




func _on_body_exited(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(2,-18), 3, Vector2i(0,4)) # Change button to unpressed
	change_spikes("up") # Change spikes to up
	
# Edit Spike tiles
func change_spikes(direction: String):
	if direction == "down":
		$"../Decor".set_cell(Vector2i(-14,-36), 3, Vector2i(0,3)) # Change Spikes to down
		$"../Decor".set_cell(Vector2i(-14,-37), 3, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(-14,-38), 3, Vector2i(0,3))  
		$"../Decor".set_cell(Vector2i(-14,-39), 3, Vector2i(0,3))  
		$"../Decor".set_cell(Vector2i(-13,-36), 3, Vector2i(0,3))  
		$"../Decor".set_cell(Vector2i(-13,-37), 3, Vector2i(0,3))  
		$"../Decor".set_cell(Vector2i(-13,-38), 3, Vector2i(0,3))  
		$"../Decor".set_cell(Vector2i(-13,-39), 3, Vector2i(0,3))  
	else:
		$"../Decor".set_cell(Vector2i(-14,-36), 3, Vector2i(3,3)) 
		$"../Decor".set_cell(Vector2i(-14,-37), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-14,-38), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-14,-39), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-13,-36), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-13,-37), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-13,-38), 3, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-13,-39), 3, Vector2i(3,3))
