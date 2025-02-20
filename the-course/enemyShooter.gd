extends Node2D

var tween: Tween

func _draw():
	draw_circle(Vector2(0, 0), 20, Color(0, 1, 1))
	var points = [Vector2(-30, -10), Vector2(30, -10), Vector2(0, -40)]
	draw_polygon(points, [Color(1, 0, 1)])
	#var bottomPoints = [Vector2(30, 10), Vector2(-30, 10), Vector2(0, 40)]
	draw_rect(Rect2(-25, 10, 50, 70), Color(0, 0, 1))
	
func _ready():
	tween = create_tween()
	tween.set_loops(0)
	
	tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)
	tween.tween_property(self, "position", position + Vector2(200, 200), 1.0)
	tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)
	tween.tween_property(self, "position", position + Vector2(-200, 200), 1.0)
	tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0)
	tween.tween_property(self, "position", position + Vector2(-200, -200), 1.0)
	tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)
	tween.tween_property(self, "position", position + Vector2(200, -200), 1.0)
