extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Put down spikes ; set the lever to on ; start timer
func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(-3,-5), 0, Vector2i(3,5))
	$spike_timer_10.start()

# Edit spike tiles
func change_spikes(direction: String):
	if direction == "down":
		$"../Decor".set_cell(Vector2i(-5,-3), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(-5,-2), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(-5,-1), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(0,3))
	else:
		$"../Decor".set_cell(Vector2i(-5,-3), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-5,-2), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-5,-1), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(3,3))

# Put spikes back up and set lever to off
func _on_spike_timer_10_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(-3,-5), 0, Vector2i(2,5))
