extends Node2D

@onready var time = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	time.start() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	get_tree().change_scene_to_file("res://main_menu.tscn") # Replace with function body.


#bc1q0z4f83w5d0thzdslpe6tjdp4njt9vyw6j6tvtz
#Maxhatestrex123!@#
