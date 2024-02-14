extends Sprite2D

var path_follow : PathFollow2D
var speed : int = 600  # Adjust the speed of movement as needed

func _ready():
	# Accessing the PathFollow2D node
	path_follow = $perimeter/PathFollow2D
	path_follow.progress = 0.0  # Use a float value

func _process(delta):
	path_follow.progress += speed * delta
	position=path_follow.position
	print(path_follow.progress)
