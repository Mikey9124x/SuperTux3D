extends RigidBody3D
var speed =10
# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#	var target_dir = (target1.position - self.origin).normalized()

#	linear_velocity = -global_transform.basis.z.normalized() *100
func _on_timer_timeout() -> void:
	speed = speed - speed *2
func _physics_process(delta: float) -> void:
	rotation.z=0
	rotation.x=0

	linear_velocity.z=speed
func _on_area_3d_body_entered(body: Node3D) -> void:
	queue_free()
