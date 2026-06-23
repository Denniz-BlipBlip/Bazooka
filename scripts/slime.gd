extends Node2D

const MVSPD=60
var direction=1
@onready var right=$RayCastRight
@onready var left=$RayCastLeft
@onready var offset=$AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if right.is_colliding():
		direction=-1
		offset.flip_h=true
	if left.is_colliding():
		direction=1
		offset.flip_h=false
	
	position.x+=direction*MVSPD*delta
