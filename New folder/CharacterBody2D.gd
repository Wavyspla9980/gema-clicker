extends CharacterBody2D

var  vector = Vector2.ZERO
var  speed = 200

func  playr():
	vector = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		vector.x -= speed
	if Input.is_action_pressed("ui_right"):
		vector.x += speed
	if Input.is_action_pressed("ui_page_up"):
		vector.y -= speed
	if Input.is_action_pressed("ui_down"):
		vector.y += speed
	vector = vector.normalized() * speed
	move_and_slide()
