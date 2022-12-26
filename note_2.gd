extends StaticBody3D

@export var an : AnimationPlayer= $AnimationPlayer
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	var my_random_number = rng.randi_range(1,3)
	if my_random_number == 1:
		an.play("place1")
	if my_random_number == 3:
		an.play("place2")
	if my_random_number == 2:
		an.play("place3")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
