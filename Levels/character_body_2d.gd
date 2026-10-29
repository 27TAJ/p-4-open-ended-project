extends CharacterBody2D

# Connect tile map layers 
@onready var floor_layer: TileMapLayer = $"../../Floor"
@onready var wall_layer: TileMapLayer = $"../../Walls"
@onready var decor_layer: TileMapLayer = $"../../Decor"
@onready var player_ray: RayCast2D = $"RayCast2D"

var pull_directions = { # map to get opposite inputs (for pull mechanic)
		Vector2(-1, 0): Vector2(1, 0), #left to right
		Vector2 (1, 0): Vector2(-1, 0), # right to left
		Vector2 (0, -1): Vector2(0, 1), # up to down
		Vector2 (0, 1): Vector2(0, -1), # down to up
	}

const SPEED = 135
var push_force: float = 50.0
var dyanmic_player_direction:Vector2 = Vector2.RIGHT
var initial_pull_direction: Vector2 = Vector2.ZERO


func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("left", "right", "up", "down") 
	velocity = direction * SPEED
	move_and_slide()
	
	# Flip animation depdning on walking direction
	if direction.x < 0:
		$AnimatedSprite2D.flip_h = true
	elif direction.x > 0:
		$AnimatedSprite2D.flip_h = false
		
	# Idle animation if player isn't moving
	if direction.length() > 0:
		$AnimatedSprite2D.play("Run Right")
	else:
		$AnimatedSprite2D.play("Idle")
	
	if Input.is_action_just_released("left"): # Map for switching ray direction based on input
		dyanmic_player_direction = Vector2.LEFT
	elif Input.is_action_just_released("right"):
		dyanmic_player_direction = Vector2.RIGHT
	elif Input.is_action_just_released("up"):
		dyanmic_player_direction = Vector2.UP
	elif Input.is_action_just_released("down"):
		dyanmic_player_direction = Vector2.DOWN
	
	player_ray.target_position = dyanmic_player_direction * 16 # updates player raycast
	
	if player_ray.is_colliding():
		if player_ray.get_collider() is RigidBody2D and Input.is_action_pressed('pull'):
				initial_pull_direction = pull_directions.get(player_ray.target_position.normalized(), Vector2.ZERO) # gets the pulling direction from map
				var pull_input: String = get_pull_input(initial_pull_direction) # uses helper func to get pulling input from pulling direction
				
				var pillar = player_ray.get_collider() as RigidBody2D # gets pillar
				if (Input.is_action_pressed(pull_input)): 
					pillar.linear_velocity = initial_pull_direction * SPEED # sets pillar velocity to pull direction and speed
				else:
					pillar.linear_velocity = Vector2.ZERO # stops moving pillar when input isnt pressed

	# Handle pillar movement
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()

		if collider is RigidBody2D: # If collision is pillar
			
			var push_dir = -collision.get_normal() # Get push direction
			var raycast: RayCast2D = collider.get_node("RayCast2D") # Get Pillar Raycast
			raycast.target_position = push_dir * 16 # Change Raycast direction based on player push direction
			raycast.force_raycast_update()
			
			if not raycast.is_colliding() or raycast.get_collider() == self: # If raycast is not colliding or colliding with player
				
				var current_cell = floor_layer.local_to_map(floor_layer.to_local(collider.global_position))
				var next_cell = current_cell + Vector2i(roundi(push_dir.x), roundi(push_dir.y))
				collider.global_position = floor_layer.to_global(floor_layer.map_to_local(next_cell)) # Update Pillar position

				collider.linear_velocity = Vector2.ZERO
				collider.angular_velocity = 0.0

# Helper func to turn pill direction into input button string
func get_pull_input(direction: Vector2) -> String: 
	if direction == Vector2(-1, 0):
		return "left"
	if direction == Vector2(1, 0):
		return "right"
	if direction == Vector2(0, -1):
		return "up"
	if direction == Vector2(0, 1):
		return "down"
	return ""
