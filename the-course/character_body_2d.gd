extends CharacterBody2D

@export var radius = 20
@export var color:Color = Color.GREEN_YELLOW
@export var line_size:float = 3

func _draw() -> void:
	var light_rad = radius * 0.1
#	draw_circle(light_rad, radius * 0.1, color, false, 3)
	draw_line(Vector2(100, 0), Vector2(100, 100), color, line_size)
	draw_line(Vector2(50, 50), Vector2(150, 50), color, line_size)
	pass
	 
