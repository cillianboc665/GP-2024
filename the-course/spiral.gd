extends Node2D

@export var thing:PackedScene
@export var count:int = 12
@export var radius = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	var theta_inc:float = (PI * 2.0) / count
	for i in range(count):
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		
		var thing:Node2D = thing_scene.intantiate()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
