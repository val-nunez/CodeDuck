extends Node

var greeting: String = "Hello!"

func PrintCharSheet():
	print(greeting)
	print("Name: Locke")
	print("Class: Thief")
	print("Level: 10")
	print("I'm no thief! I'm a treasure hunter!")

func _ready():
	PrintCharSheet()
