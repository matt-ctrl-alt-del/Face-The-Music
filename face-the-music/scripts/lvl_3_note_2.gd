extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("+1 Music Note!")
	$".".queue_free()
	$Light2.queue_free()
