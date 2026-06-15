extends Control


var button_type = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_start_pressed() -> void:
	button_type = "start"
	$Fade_transition.show()
	$Fade_transition/AnimationPlayer.play("fade_in")
	await $Fade_transition/AnimationPlayer.animation_finished
	if button_type == "start" :
		get_tree().change_scene_to_file("res://scenes/level_1.tscn")
		
