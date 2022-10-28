extends KinematicBody2D


export (int) var speed = 200

var velocity = Vector2.LEFT;
onready var playerDeath = get_node("../Player/PlayerDeathScript")

func _physics_process(delta):
	
	var collision = move_and_collide(velocity)
	if(collision != null): # If enemy collides with anything at all player dies
		print(collision)
		playerDeath.die()

func _ready():
	pass
