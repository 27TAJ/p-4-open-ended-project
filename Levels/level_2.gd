extends Node2D
var blocks_collected: int = 0 # Track amount of blocks collected


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if blocks_collected == 4: # If 4 blocks collected open exit doors
		$Walls.set_cell(Vector2i(5,-22), 1, Vector2i(21,3))
		$Walls.set_cell(Vector2i(6,-22), 1, Vector2i(22,3))

#Add one to the block count
func add_block():
	blocks_collected += 1
	$UI/Collected_Label.text = "Collected Blocks: " + str(blocks_collected) + "/4"

func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
