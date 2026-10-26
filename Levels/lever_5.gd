extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
#change spikes to down, set lever to on, start timer
func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(1, 22), 0 , Vector2i(3, 5))
	$spike_timer_8.start()

# change spikes to up and turn lever off
func _on_spike_timer_8_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(1, 22), 0 , Vector2i(2, 5))
	
# edit spike tiles
func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(-7, 19), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-6, 19), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-5, 19), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-4, 19), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-7, 20), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-4, 20), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-7, 21), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-4, 21), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-7, 22), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-6, 22), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-5, 22), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-4, 22), 0 , Vector2i(0, 3))
	else:
		$"../Decor".set_cell(Vector2i(-7, 19), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-6, 19), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-5, 19), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-4, 19), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-7, 20), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-4, 20), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-7, 21), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-4, 21), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-7, 22), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-6, 22), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-5, 22), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-4, 22), 0 , Vector2i(3, 3))
