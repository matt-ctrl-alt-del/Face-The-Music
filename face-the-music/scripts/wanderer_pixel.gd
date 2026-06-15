extends CharacterBody2D

const tile_size: Vector2 = Vector2(16, 16)
var sprite_node_pos_tween: Tween

func _ready() -> void:
	global_position.x = (floor(global_position.x / 16.0) * 16.0) + 8.0
	global_position.y = (floor(global_position.y / 16.0) * 16.0) + 8.0

func _physics_process(delta: float) -> void:
	if !sprite_node_pos_tween or !sprite_node_pos_tween.is_running():
		if Input.is_action_pressed("up") and not $up.is_colliding():
			_move(Vector2(0, -1))
		elif Input.is_action_pressed("down") and not $down.is_colliding():
			_move(Vector2(0, 1))
		elif Input.is_action_pressed("left") and not $left.is_colliding():
			_move(Vector2(-1, 0))
		elif Input.is_action_pressed("right") and not $right.is_colliding():
			_move(Vector2(1,0))

func _move(dir: Vector2):
	var target_position = global_position + (dir * tile_size)

	if sprite_node_pos_tween:
		sprite_node_pos_tween.kill()
	
	sprite_node_pos_tween = create_tween()
	sprite_node_pos_tween.set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	sprite_node_pos_tween.tween_property(self, "global_position", target_position, 0.15).set_trans(Tween.TRANS_LINEAR)
