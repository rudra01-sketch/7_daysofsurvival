extends Node2D

func _draw():

	# Background
	draw_rect(
		Rect2(-2000, -2000, 4000, 4000),
		Color("#20382B")
	)

	# Ground grid
	for x in range(-1000, 1001, 80):
		draw_line(
			Vector2(x, -1000),
			Vector2(x, 1000),
			Color("#294332"),
			1.0
		)

	for y in range(-1000, 1001, 80):
		draw_line(
			Vector2(-1000, y),
			Vector2(1000, y),
			Color("#294332"),
			1.0
		)

	# Trees
	var trees = [
		Vector2(-180, -120),
		Vector2(180, -160),
		Vector2(-260, 150),
		Vector2(260, 120),
		Vector2(80, 270),
		Vector2(-80, -300)
	]

	for tree in trees:
		draw_circle(
			tree + Vector2(0, 8),
			23,
			Color("#14251C")
		)

		draw_circle(tree, 20, Color("#497B4E"))

		draw_circle(
			tree + Vector2(-5, -6),
			10,
			Color("#66945D")
		)
