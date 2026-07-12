extends TextureButton

signal ITEM2


func _on_pressed() -> void:
	position.y += 1
	await get_tree().create_timer(0.05).timeout
	position.y -= 1
	await get_tree().create_timer(0.1).timeout
	emit_signal("ITEM2")
	queue_free()
	
