extends Area2D

func _draw():
	# Main wooden log
	draw_rect(
		Rect2(-10, -5, 20, 10),
		Color("#8B5A2B")
	)

	# Rounded ends
	draw_circle(Vector2(-10, 0), 5, Color("#B87940"))
	draw_circle(Vector2(10, 0), 5, Color("#B87940"))

	# Highlight
	draw_line(
		Vector2(-6, -2),
		Vector2(6, -2),
		Color("#E0AC68"),
		2.0
	)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.collect_wood()
		queue_free()
