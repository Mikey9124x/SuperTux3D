extends CharacterBody3D
#Speed of tux
const SPEED = 20.0
#How high tux jumps
const JUMP_VELOCITY = 6
var scene = preload("res://snowball.tscn")
func _ready() -> void:
#Captures the mouse. Move somewhere else?
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
func _input(event):
	#Rotates the camera horizontaly
	if event is InputEventMouseMotion:
		rotate_y(((event.relative.normalized().x-event.relative.normalized().x*2)*0.1))

func _physics_process(delta: float) -> void:
	#Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	#Handle Crouch
	if Input.is_action_pressed("crouch"):
		scale.y=0.5
	else:
		scale.y=1
	if Input.is_action_just_pressed("e"):
		add_child(scene.instantiate())
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:	
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
