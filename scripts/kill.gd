extends Area2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("die"):
		body.die()
		await get_tree().create_timer(1.0).timeout
		
		if is_instance_valid(get_tree()):
			get_tree().reload_current_scene()
