extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var OS_name = OS.get_name()
	
	if OS_name == "Android" or OS_name == "ios":
		show()
	else:
		hide()
