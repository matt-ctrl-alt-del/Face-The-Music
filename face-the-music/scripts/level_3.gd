extends Node2D


func _ready() -> void:
	$Fade_transition/AnimationPlayer.play("fade_out")
	await $Fade_transition/AnimationPlayer.animation_finished
	$Fade_transition.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	$Fade_transition.show()
	$Fade_transition/AnimationPlayer.play("fade_in")
	await $Fade_transition/AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/title.tscn")
