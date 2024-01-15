extends CharacterBody2D
class_name Enemy

const SPEED = 150
var direction
func _ready():
	self.rotate(randi())
	direction= Vector2.UP.rotated(self.rotation)
	pass

func _physics_process(delta):
	self.position += direction*SPEED*delta
