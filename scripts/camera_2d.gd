extends Camera2D

var time: float = 0.0
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	make_current()
	rng.randomize()

func _process(delta: float) -> void:
	time += delta
	if time > 5.0 and time < 10.0:
		var shake_time = time - 5.0
		var str = 15.0 * (1.0 - (shake_time / 5.0))
		offset = Vector2(rng.randf_range(-str, str), rng.randf_range(-str, str))
	elif time >= 10.0:
		offset = Vector2.ZERO
