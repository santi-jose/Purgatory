extends Node2D

# Declare member variables here. Examples:
onready var aqueduct = get_node("aqueduct_tilemap") # get aqueduct _tilemap node

# Called when the node enters the scene tree for the first time.
func _ready():

	# iterate through bridge nodes in the Bridges group
	for bridge in get_tree().get_nodes_in_group("Bridges"):
		bridge.connect("waterEdgeOn", self, "waterEdgeOn") # connect signal to call function turn sewer water collision on
		bridge.connect("waterEdgeOff", self, "waterEdgeOff") # connect signal to call funciton turn sewer water collision off



# function to turn sewer water collision on
func waterEdgeOn():
	aqueduct.set_collision_layer_bit(0, true)
	aqueduct.set_collision_mask_bit(0, true)

# function to turn sewer water collision off
func waterEdgeOff():
	aqueduct.set_collision_layer_bit(0, false)
	aqueduct.set_collision_mask_bit(0, false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
