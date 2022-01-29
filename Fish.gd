extends KinematicBody2D

var speed = 60
var x = 600
var y = 600



func _process(delta):
	var tick = rand_range(0, 60)
	if(tick<1):
		x = rand_range(0, 300)
		y = rand_range(0, 300)
	position = position.move_toward(Vector2(x,y), delta * speed)
	look_at(Vector2(x,y))
