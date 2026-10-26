extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#edit spike tiles
func change_spikes(direction: String):
	if direction == "down":
		$"../Decor".set_cell(Vector2i(-1, 4), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(0, 4), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(1, 4), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-1, -7), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(0, -7), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(1, -7), 0 ,Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(2, -7), 0 ,Vector2i(0, 3))
	else:
		$"../Decor".set_cell(Vector2i(-1, 4), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(0, 4), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(1, 4), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-1, -7), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(0, -7), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(1, -7), 0 ,Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(2, -7), 0 ,Vector2i(3, 3))

# Put spikes up, turn lever off, stop the timer
func _on_spike_timer_5_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(3, 1), 0 ,Vector2i(2, 5))
	$spike_timer_5.stop()

# Put spikes down, turn lever on, start timer
func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(3, 1), 0 ,Vector2i(3, 5))
	$spike_timer_5.start()
