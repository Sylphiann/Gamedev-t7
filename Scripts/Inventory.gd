extends Node

# The Inventory
var inventory: int
signal balls_added

func add_item():
	inventory += 1
	print("Player now has ", inventory, " balls")
	emit_signal("balls_added")
