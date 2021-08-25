extends KinematicBody2D



func _ready():
	pass


func _physics_process(delta):
	var vel = Vector2(0,0)
	if Input.is_action_pressed("move_up"):
		vel += Vector2(0,-1)
	if Input.is_action_pressed("move_down"):
		vel += Vector2(0,1)
	if Input.is_action_pressed("move_left"):
		vel += Vector2(-1,0)
	if Input.is_action_pressed("move_right"):
		vel += Vector2(1,0)

	var speed = 6
	move_and_collide(vel * speed)
