extends CharacterBody2D
signal CANTP

const SPEED = 230
const JUMP_VELOCITY = -300
var health = 100
var item1 = false
var item2 = false
var item3 = false
var cantp = false
var collectedall = false
var isdead = false

func player():
	pass

func _physics_process(delta: float) -> void:
	
	if item1 and item2 and item3:
		cantp = true
		print("ALL ITEMS YES")
		
	if cantp == true:
		emit_signal("CANTP")
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if isdead:
		return

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
		
	if direction > 0:
		$AnimatedSprite2D.flip_h = false
	elif direction < 0:
		$AnimatedSprite2D.flip_h = true
		
	if direction > 0:
		$AnimatedSprite2D.play("run")
	if direction < 0:
		$AnimatedSprite2D.play("run")
	if direction == 0:
		$AnimatedSprite2D.play("idle")
		
	move_and_slide()
		
func die():
	isdead = true
	$AnimatedSprite2D.play("die")
	await get_tree().create_timer(1.0).timeout
	
func _on_pick_up_1_item_1() -> void:
	item1 = true
	print("got 1st")

func _on_pick_up_2_item_2() -> void:
	item2 = true
	print("got 2nd")


func _on_pick_up_3_item_3() -> void:
	item3 = true
	print("got 3rd")


func _on_node_2d_reset() -> void:
	item1 = false
	item2 = false
	item3 = false
