extends KinematicBody2D


var velocity = Vector2.ZERO
export var speed = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	var move_vector = Vector2.LEFT
	var pos = get_viewport().get_mouse_position()
	var dis = $CollisionShape2D.global_position.distance_to(pos)
	var dir = $CollisionShape2D.global_position.direction_to(pos)
	if(dis<150):
		velocity = -dir*(speed/dis)
		look_at(global_position-dir)
	else:
		velocity = Vector2.ZERO
	move_and_collide(velocity)
