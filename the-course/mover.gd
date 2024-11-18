extends Sprite2D

var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if global_position.x >= 1135:
		global_position.x -= speed * delta
	else:
		global_position.x += speed * delta
	
	pass
