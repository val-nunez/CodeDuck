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
	
# Print 3 lines, 3 times
	for num in range(2):
		print("Hey!")
	print("Listen!")

# Print 10 lines, in descending order
	for num in range(3, 0, -1):
		cell += Vector2(0.1, 0.1)
		print("Count!", num, cell)

# Print 5 lines, in ascending order
	for num in range(1, 6):
		print(num)

# Print one half of a pyramid
	for row in range(1, 5):
		print("*".repeat(row))

	# print_numbers()

	print("Current Level: ", level)

	level_up()

	take_damage(10)
