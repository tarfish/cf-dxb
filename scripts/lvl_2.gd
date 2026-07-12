extends Node2D
signal  RESET

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	emit_signal("RESET")
	$"pick up 1".texture_normal = load("res://scripts/big red.png")
	$"pick up 2".texture_normal = load("res://scripts/nozzle.png")
	$"pick up 3".texture_normal = load("res://scripts/nozzle.png")
