extends CharacterBody3D

@onready var navagent = $NavigationAgent3D
@export var SPEED = 3.0

func  _physics_process(delta):
	pass
	move_and_slide()

func update_location(target):
	navagent.set_target_location(target)


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		navagent.set_target_location(body.global_transform.origin)
		var next_loc = navagent.get_next_location()
		var current_loc = global_transform.origin
		var new_velocity = (next_loc - current_loc).normalized() * SPEED 
		velocity = velocity.move_toward(new_velocity,.25)
		move_and_slide()
