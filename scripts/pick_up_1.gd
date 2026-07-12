extends TextureButton

signal ITEM1


func _on_pressed() -> void:
	position.y += 1
	await get_tree().create_timer(0.05).timeout
	position.y -= 1
	await get_tree().create_timer(0.1).timeout
	emit_signal("ITEM1")
	queue_free()
	
