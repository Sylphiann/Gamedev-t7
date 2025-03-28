extends Interactable

@export var light : NodePath
@export var on_by_default = true
@export var energy_when_on = 10
@export var energy_when_off = 3

@export var button : NodePath
@export var button_depth = -0.15

@onready var light_node : Light3D = get_node(light)
@onready var button_node : MeshInstance3D = get_node(button)
@onready var initial_transform : Transform3D = button_node.transform

var on = on_by_default

func _ready():
	light_node.light_energy = energy_when_on if on else energy_when_off

func interact():
	on = !on
	light_node.light_energy = energy_when_on if on else energy_when_off
	toggle_button_animation()

func toggle_button_animation():
	var direction = -initial_transform.basis.z.normalized()
	if !on:
		button_node.transform.origin = initial_transform.origin + direction * button_depth
	else:
		button_node.transform = initial_transform
