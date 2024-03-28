extends Area2D


func _ready() -> void:
	pass


func _on_area_entered(area):
	queue_free()
