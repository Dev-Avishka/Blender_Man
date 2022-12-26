extends Node3D

@onready var note1 = $note1
@onready var note2 = $note2
@onready var exit = $cube
@onready var note3 = $note3
@onready var player = $Player
@onready var enemy = $enemy
var es = false
func _physics_process(delta):
	get_tree().call_group("jol","update_target_location",player.global_transform.origin)
# Called when the node enters the scene tree2w3e red tcd tsdv mweo nl ui for the first time.
func _ready():
	remove_child(enemy)
	remove_child(exit) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if es == true:
		add_child(enemy)
	pass


func _on_player_collect_1():
	es = true
	remove_child(note1) # Replace with function body.


func _on_player_collect_2():
	es = true
	remove_child(note2) # Replace with function body.


func _on_player_exit():
	add_child(exit)
	pass # Replace with function body.


func _on_exit_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://win.tscn")


func _on_player_collect_3():
	remove_child(note3)
	es = true
