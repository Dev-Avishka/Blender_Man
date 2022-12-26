extends CharacterBody3D


var SPEED = 5.0

@onready var nav_agent = $NavigationAgent3D
# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	var current_loc = global_transform.origin
	var next_loc = nav_agent.get_next_location()
	var new_velocity = (next_loc-current_loc).normalized() * SPEED
	velocity = velocity.move_toward(new_velocity,.25)
	move_and_slide()
	# Add the gravity

func update_target_location(target_location):
	nav_agent.set_target_location(target_location)
	faceDirection(target_location)
 # Face towards the positive x-axis
	
func faceDirection(direction : Vector3):
	look_at(Vector3(direction.x, global_position.y, direction.z), Vector3.UP)




func _on_area_3d_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://die.tscn")


func _on_player_collect_1():
	SPEED += 2 # Replace with function body.


func _on_player_collect_2():
	SPEED += 1.5 # Replace with function body.


func _on_player_collect_3():
	SPEED += 1.5 # Replace with function body.
