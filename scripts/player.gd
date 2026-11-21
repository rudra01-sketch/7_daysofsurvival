extends CharacterBody2D

const SPEED = 220.0

func _physics_process(delta: float) -> void:

	var direction = Vector2.ZERO

	if Input.is_key_pressed(KEY_W):
		direction.y -= 1

	if Input.is_key_pressed(KEY_S):
		direction.y += 1

	if Input.is_key_pressed(KEY_A):
		direction.x -= 1

	if Input.is_key_pressed(KEY_D):
		direction.x += 1

	velocity = direction.normalized() * SPEED

	move_and_slide()
	
var wood_count = 0

func _draw():
	draw_circle(Vector2.ZERO, 12, Color("#55B8E8"))
	draw_circle(Vector2(-3, -4), 3, Color("#BDEEFF"))

func collect_wood():
	wood_count += 1
	print("Wood collected: ", wood_count)


  
