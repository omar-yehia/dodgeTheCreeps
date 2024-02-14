extends CharacterBody2D
class_name Enemy

const SPEED = 150
var direction

@onready var viewport_rect=get_viewport_rect()
var death_rect:Rect2

func _ready():
	var displacement=Vector2(5,5)
	death_rect=viewport_rect
	death_rect.position-=displacement
	death_rect.size+=displacement

	self.rotate(randi())
	direction= Vector2.UP.rotated(self.rotation)
	pass

func _physics_process(delta):
	self.position += direction*SPEED*delta
	if(isOutsideBox()):
		print('freeing the object')
		self.queue_free()
	
func isOutsideBox():
	return !death_rect.has_point(self.position)
		
