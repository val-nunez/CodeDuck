extends Node

# EVERYTHING BELOW IS PRACTICE

# Variables
var rotation: int = 0
var forward: int = 0

# Function Definitions
func rotate(radians):
	rotation = rotation + radians
	# print("You rotated ", str(radians), " degrees!")

func move_forward(direction):
	forward = forward + direction	

func draw_square(length, radians):
	
	move_forward(length) 
	print("Drawing line, size: ", str(length))
	
	rotate(radians)
	print("Rotating: ", str(radians), " degrees!")
	
	move_forward(length) 
	print("Drawing line, size: ", str(length))
	
	rotate(radians)
	print("Rotating: ", str(radians), " degrees!")
	
	move_forward(length) 
	print("Drawing line, size: ", str(length))
	
	rotate(radians)
	print("Rotating: ", str(radians), " degrees!")
	
	move_forward(length) 
	print("Drawing line, size: ", str(length))
	
	rotate(radians)
	print("Rotating: ", str(radians), " degrees!")

	print("Square done!")

# Start
func _ready():
	
	rotate(1.5)

	draw_square(300, 90)
