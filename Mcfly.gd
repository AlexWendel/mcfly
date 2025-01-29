extends CharacterBody2D


@export var gravity: float = 980.0
var hold_power:float = 0

func throw(angle:int, power:float):
	var radians = deg_to_rad(angle)
	velocity = Vector2(power * cos(radians), -power * sin(radians))
	
func _physics_process(delta):	
	if Input.is_action_pressed("mouse_left"):
		throw(45, 900)

	velocity.y += gravity * delta
	move_and_slide()
