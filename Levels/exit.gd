extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# If player enters switch to level 2
func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Levels/puzzle_one.tscn")
