extends Node3D
# Called when the node enters the scene tree for the first time.

func _input(event):
# zooms in/out camera
	if event.is_action_pressed("Scroll_In"):
		position.z=position.z+1
		print(position.z)
	if event.is_action_pressed("Scroll_Out"):
		position.z=position.z-1
		print(position.z)
	if position.z<1.8:
		position.z=1.8
