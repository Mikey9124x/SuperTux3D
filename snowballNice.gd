extends RigidBody3D
var dir
func _ready() -> void:
	top_level=true
#constant velocity of projectile
func _physics_process(_delta: float) -> void:
	linear_velocity = -global_transform.basis.z.normalized() *100
	

# Times projectile
func _on_timer_timeout() -> void:
	queue_free()




func _on_area_3d_body_entered(body: Node3D) -> void:
	queue_free()
