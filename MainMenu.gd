extends Button

var over = preload("res://Mobile/Playground.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED

# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_pressed() -> void:
	get_tree().root.add_child(over)
	get_node("/root/Menu").queue_free()
