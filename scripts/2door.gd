extends Node2D

var cantp = false



func _on_player_cantp() -> void:
	cantp = true




func _on_detect_player_body_entered(body: Node2D) -> void:
	if cantp == true: 
		$AnimatedSprite2D.play("open")

func _on_teleport_player_body_entered(body: Node2D) -> void:
	if body.has_method("player") and cantp:
		get_tree().change_scene_to_file("res://scenes/cutscene.tscn")
