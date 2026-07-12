extends TextureButton





func _on_pressed() -> void:
	$"../play".visible = false
	$"../RichTextLabel".visible = false
	$".".visible = false
	$"../RichTextLabel2".visible = true
	$"../RichTextLabel3".visible = true
	$"../RichTextLabel4".visible = true
	await get_tree().create_timer(7.0).timeout
	$"../play".visible = true
	$"../RichTextLabel".visible = true
	$".".visible = true
	$"../RichTextLabel2".visible = true
	$"../RichTextLabel2".visible = false
	$"../RichTextLabel3".visible = false
	$"../RichTextLabel4".visible = false
