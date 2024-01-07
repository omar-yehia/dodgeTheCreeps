extends CharacterBody2D
var SPEED = 400
 
func getDirection():
	var direction=Input.get_vector("move_left","move_right","move_up","move_down")
	return direction
	 
func movement(delta):
	var direction=getDirection()
	self.position+=direction*SPEED*delta
 

func _physics_process(delta):
	movement(delta)
 
