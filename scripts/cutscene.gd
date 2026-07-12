extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("cutscene")
	await get_tree().create_timer(6.7).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
