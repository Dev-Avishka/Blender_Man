extends Control

@onready var time = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	time.start()
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://main_menu.tscn")# Replace with function body.
