extends CharacterBody2D
class_name Enemy

const SPEED = 30
func _ready():
	self.rotate(randi())
 
func _physics_process(delta):
	var direction = Vector2.UP.rotated(self.rotation)
	self.position += direction * (SPEED * delta)
