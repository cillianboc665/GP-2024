extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

const SPEED = 5000.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 1800

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	

	
	move_and_slide()
