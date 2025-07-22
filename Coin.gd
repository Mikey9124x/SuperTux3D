extends Area3D

var sound = preload("res://coin.wav")
func _on_area_entered(area: Area3D) -> void:

	get_parent().queue_free()
