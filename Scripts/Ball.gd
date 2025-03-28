extends Area3D

func _ready():
	pass
	
func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Inventory.add_item()
		queue_free()  # Remove item from the world
