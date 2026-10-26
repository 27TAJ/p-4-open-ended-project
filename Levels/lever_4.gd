extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# edit spike tiles
func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(21, 12), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(22, 12), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(23, 12), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(21, 13), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(23, 13), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(21, 14), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(22, 14), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(23, 14), 0 , Vector2i(0, 3))
	else:
		$"../Decor".set_cell(Vector2i(21, 12), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(22, 12), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(23, 12), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(21, 13), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(23, 13), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(21, 14), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(22, 14), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(23, 14), 0 , Vector2i(3, 3))

# change spikes to down, turn lever on, start timer
func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(14,13), 0, Vector2i(3, 5))
	$Spike_timer_7.start()
	
# change spikes to up and turn lever off
func _on_spike_timer_7_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(14,13), 0, Vector2i(2, 5))
