extends CharacterBody3D

enum states{
	patrol,
	chasing,
	hunting,
	waiting
}

var target 
var current_state : states
var navagent : NavigationAgent3D
@export var waypoints: Array
var wpindex : int
@export var speed = 3
@onready var pt : Timer 
func _ready():
	pt = $PatroltImer
	waypoints = get_tree().get_nodes_in_group("lol")
	current_state = states.patrol
	navagent = $NavigationAgent3D
	navagent.set_target_location(waypoints[0].global_position)
	
func _process(delta):
	match current_state:
		states.patrol:
			
			if (navagent.is_navigation_finished()):
				current_state = states.waiting 	
				pt.start()
				return
			var targetlocation = navagent.get_next_location()
			var direction = global_position.direction_to(targetlocation)
			facedirection(targetlocation)
			velocity = direction*speed
			move_and_slide()
		states.chasing:
			pass
		states.hunting:
			pass
		states.waiting:
			pass
	pass


func _on_player_collect_1():
	speed = speed + 2


func _on_player_collect_2():
	speed = speed + 2


func _on_player_collect_3():
	speed = speed + 2

func facedirection(direction : Vector3):
	look_at(Vector3(direction.x,global_position.y,direction.z), Vector3.UP)
func _on_patrolt_imer_timeout():	
	wpindex += 1
	if wpindex > waypoints.size() - 1:
		wpindex = 0
		
	current_state = states.patrol
	navagent.set_target_location(waypoints[wpindex].global_position)
	pass


func _on_sight_body_entered(body):
	pass
