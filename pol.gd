extends Node3D

@export var Player:Node
@export var World:Node
@export var Name:String 
@export var age:int
# Called when the node enters the scene tree for the first time.
func _ready():
	if age > 0:	
		print("Hello "+Name+" Who is "+str(age)+" years old")
	else:
		print("Invalid age")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
