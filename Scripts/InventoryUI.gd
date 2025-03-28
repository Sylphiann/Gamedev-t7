extends CanvasLayer

@onready var label = $Label

func _ready():
	Inventory.connect("balls_added", update_label)
	update_label()

func update_label():
	label.text = "Balls: " + str(Inventory.inventory)
