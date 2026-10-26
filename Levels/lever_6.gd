extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# change spikes to down, change lever to on, start timer
func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(-29, -3), 0 , Vector2i(3, 5))
	$spike_timer_8.start()

# change spikes to up and set lever to off
func _on_spike_timer_8_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(-29, -3), 0 , Vector2i(2, 5))

#edit spike tiles
func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(-32, -10), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-31, -10), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-30, -10), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-29, -10), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-28, -10), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-28, -9), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, -9), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-28, -8), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, -8), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-28, -7), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, -7), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, -6), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-31, -6), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-30, -6), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-29, -6), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-28, -6), 0 , Vector2i(0, 3))
		
		$"../Decor".set_cell(Vector2i(-32, 3), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-31, 3), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-30, 3), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, 4), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-30, 4), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-32, 5), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-31, 5), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-30, 5), 0 , Vector2i(0, 3))

	else:
		$"../Decor".set_cell(Vector2i(-32, -10), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-31, -10), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-30, -10), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-29, -10), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-28, -10), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-28, -9), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, -9), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-28, -8), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, -8), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-28, -7), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, -7), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, -6), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-31, -6), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-30, -6), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-29, -6), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-28, -6), 0 , Vector2i(3, 3))
		
		$"../Decor".set_cell(Vector2i(-32, 3), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-31, 3), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-30, 3), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, 4), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-30, 4), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-32, 5), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-31, 5), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-30, 5), 0 , Vector2i(3, 3))
