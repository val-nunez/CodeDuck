extends Node

var greeting: String = "Hello!"
var item: String = "Mythril Dagger"

var gil = 0

# How do you do an array that can spit out a random item?

#Array
var item_list = ["Buckler", "Ribbon", "Tent", "Phoenix Down", "Epee"]

# Function definitions have parameters
# Function calls have arguments

# Function Definitions, no parameters
func PrintCharSheet():
	print(greeting)
	print("Name: Locke")
	print("Class: Thief")
	print("Level: 10")
	print("I'm no thief! I'm a treasure hunter!")

func OpenChest():
	item_list.shuffle()
	print("You got a " + item_list[0])

# Function definition, with parameter
func EarnGil(amount):
	amount = randi_range(0, 500)
	
	# str("[", 3, " ", 3.14, " ", Vector2(1,2), "]")
	print("You found ", str(amount), " gil!")

func _ready():
	# Function calls, no arguments
	PrintCharSheet()
	OpenChest()

	# Function call, with argument
	# This is not flexible. It should take in any value, not a fixed value.
	EarnGil(gil)
	EarnGil(gil)
