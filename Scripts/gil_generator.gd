extends Node

# EVERYTHING BELOW IS PRACTICE

# Variables
var rotation: int = 0
var forward: int = 0
var health: int = 100

# Function Definitions
func rotate(radians):
	rotation = rotation + radians
	# print("You rotated ", str(radians), " degrees!")

func move_forward(direction):
	forward = forward + direction	

func draw_line(point_a, point_b, offset):
	print("Point A: ", point_a)
	print("Point B: ", point_b)
	var total
	total = point_a + point_b - offset

	# Subract one inch
	print("Subtract ", offset)

	print("Line lenght is: ", total)


	# Change Health
func player_health(amount):
	health -= amount
	print("Damage Taken! Health is: ", health)

func heal_player(amount):
	health += amount
	print("Player healed: ", amount)
	print("Health is now: ", health)

# Start
func _ready():
	
	rotate(1.5)

	draw_line(0, 90, 10)

	player_health(25)

	heal_player(25)
