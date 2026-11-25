extends Node

func _ready() -> void:
	for number in range(3):
		print("*".repeat(number))

	for row in range(1, 6):
		print("*".repeat(row))
