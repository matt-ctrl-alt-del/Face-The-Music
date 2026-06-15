extends Node2D


# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: Node2D) -> void:
	print("+1 Music Note!")
	$".".queue_free()
	$Light.queue_free()
