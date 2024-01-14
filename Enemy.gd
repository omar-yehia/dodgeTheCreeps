extends CharacterBody2D
class_name Enemy

const SPEED = 50
func _ready():
	#self.rotate(randi())
	pass

var dir=1
var a=SPEED
func _physics_process(delta):
	a=SPEED*delta
	if(randi() % 7 == 1):
		dir*=-1
		a*=10
	else:
		a=SPEED*delta
		
	
	self.rotation+=delta*dir*sin(PI/23)
	var direction = Vector2.UP.rotated(self.rotation)
	self.position += direction * a
