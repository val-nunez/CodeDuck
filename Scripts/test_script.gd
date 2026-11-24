extends Node

var health: float = 10
var max_health: int = 100
var level: int = 2
var strength: float = 10

func level_up():
	level += 1
	print("Hero Level Up! Here Level is now: ", level)

	health *= 0.5

	if level > 2:
		strength *= 0.1
		print("Strength increased! Strength is now: ", strength)
	else:
		print("Strength is: ", strength)

func take_damage(amount):
	print("Damage taken currently: ", amount)

	if level > 2:
		amount *= 0.5
		print("Damage taken reduced by: ", amount)

	health -= amount
	print("Health: ", health, " Damage Taken: ", amount)

	if health < 0:
		health = 0

# Testing while loops
var number = 0
func print_numbers():
	while number < 4:
		print(number)
		number += 1

var cell := Vector2(0,0)

func _ready() -> void:
	
	for counter in range(1, 4):
		cell += Vector2(1, 1)
		print(counter, " ", cell)

	# print_numbers()

	print("Current Level: ", level)

	level_up()

	take_damage(10)
