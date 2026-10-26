extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# If player collects delete block and add to the block count
func _on_body_entered(body: Node2D) -> void:
	queue_free()
	get_parent().add_block()
