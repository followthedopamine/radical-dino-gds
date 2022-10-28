extends Node

onready var player = get_node("../")

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	else:
		velocity.y += 1
	
	velocity = velocity.normalized() * speed
	
func _physics_process(delta):
	get_input()
	velocity = player.move_and_slide(velocity)
