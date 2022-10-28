extends Node

onready var player = get_node("../")

export (int) var health = 1

func die():
	# End the game here
	print("Player died")
	player.queue_free()
	print("Player died")
