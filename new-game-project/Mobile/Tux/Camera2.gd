extends Node3D

#Rotates camera verticaly
func _input(event):
	if event is InputEventMouseMotion:
		rotate_x((event.relative.normalized().y*0.1)-(event.relative.normalized().y*0.1)*2)
	if rotation_degrees.x >0:
		rotation_degrees.x = 0
	if rotation_degrees.x <-70:
		rotation_degrees.x = -70
	print(rotation_degrees)
