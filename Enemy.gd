extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player = get_node("../Player")
onready var ray = get_node("RayCast2D")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ray.set_cast_to(player.global_position - global_position)
	#print(ray.get_cast_to())
	print(ray.get_collider())
	pass
