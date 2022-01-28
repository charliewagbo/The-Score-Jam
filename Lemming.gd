extends KinematicBody2D


var velocity = Vector2.ZERO
export var speed = 50
export var triger_range = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	var pos = get_viewport().get_mouse_position()
	var dis = $CollisionShape2D.global_position.distance_to(pos)
	var dir = $CollisionShape2D.global_position.direction_to(pos)
	if(dis<triger_range):
		velocity = -dir*(0.3+(speed/dis))
		look_at(global_position-dir)
	else:
		velocity = Vector2.ZERO
		look_at(pos)
	move_and_collide(velocity)
