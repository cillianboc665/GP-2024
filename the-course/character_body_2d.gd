extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

const SPEED = 700.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 360

func print_stuff():
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("rotation", rad_to_deg(rotation))

func _physics_process(delta: float) -> void:
	print_stuff()
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	

	
	move_and_slide()
