extends StaticBody2D

# Declare member variables here. Examples:
onready var duckling = get_node("../YSort/duckling")
signal waterEdgeOn; # signal to turn sewer water collision on
signal waterEdgeOff; # signal to turn sewer water collision  off

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# emit signals for crossing bridge

func _on_Area2D_body_exited(body):
	if not body == duckling:
		pass
	else:
		emit_signal("waterEdgeOn") # emit signal to turn sewer water collision on


func _on_Area2D_body_entered(body):
	if not body == duckling:
		pass
	else:
		emit_signal("waterEdgeOff") # emit signal to turn sewer water collision off
