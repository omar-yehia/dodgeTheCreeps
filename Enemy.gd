extends CharacterBody2D
class_name Enemy

const SPEED = 150
var direction

@onready var viewport_rect=get_viewport_rect()

func _ready():
	self.rotate(randi())
	direction= Vector2.UP.rotated(self.rotation)
	pass

func _physics_process(delta):
	self.position += direction*SPEED*delta
	if(isOutsideBox()):
		print('yessss')
		self.queue_free()
	
func isOutsideBox():
	return !viewport_rect.has_point(self.position)
		
