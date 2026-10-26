extends Node2D

var blocks_collected: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if blocks_collected == 4: # If 4 blocks collected open doors to next level
		$Walls.set_cell(Vector2i(12,-40), 2, Vector2i(21,3))
		$Walls.set_cell(Vector2i(13,-40), 2, Vector2i(22,3))
		
# Add 1 to the block count and update label
func add_block():
	blocks_collected += 1
	$UI/Collected_Label.text = "Collected Blocks: " + str(blocks_collected) + "/4"

# if reset button hit reset level
func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
