extends RigidBody3D
func _ready() -> void:
	rotation=get_parent().rotation

# Called when the node enters the scene tree for the first time.
func _physics_process(_delta: float) -> void:
	angular_velocity.x=10
