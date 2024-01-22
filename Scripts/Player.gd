extends CharacterBody2D

@export var speed: int = 50

func _physics_process(delta: float) -> void:
	var direction: Vector2
	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if 1 == abs(direction.x) and 1 == abs(direction.y):
		direction = direction.normalized()
	
	var movement = speed * direction * delta
	
	move_and_collide(movement)
