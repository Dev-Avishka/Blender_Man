extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func move():
	print("lol")

func stop():
	self.apply_impulse(Vector3(5,50,5))


func _on_player_pol():
	stop()
