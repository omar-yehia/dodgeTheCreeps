extends CharacterBody2D
var SPEED = 400
@onready var runner = $runner
 
func getDirection():
	var direction=Input.get_vector("move_left","move_right","move_up","move_down")
	return direction
	 
func movement(delta,direction):
	self.position+=direction*SPEED*delta
	if self.position.x<0:
		self.position.x=0
	elif self.position.x>1150:
		self.position.x=1150
	elif self.position.y<0:
		self.position.y=0
	elif self.position.y>1150:
		self.position.y=1150
			
 	

func _process(delta):
	var direction=getDirection()
	runner.flip_h=direction.x<0
	movement(delta,direction)
	#if Input.is_action_pressed("ui_right"):
	if abs(direction)>Vector2.ZERO:
		runner.play("run")
	else:
		runner.stop()
 

#func _physics_process(delta):
	#movement(delta)
 
