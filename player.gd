extends CharacterBody2D
var SPEED = 400
 
func getX():
	var direction=0
	if Input.is_action_pressed('ui_left'):
		direction=-1
	elif Input.is_action_pressed('ui_right'):
		direction=1
	return direction
	
func getY():
	var direction=0
	if Input.is_action_pressed('ui_up'):
		direction=-1
	elif Input.is_action_pressed('ui_down'):
		direction=1
	return direction
	
func movement(delta):
	var x=getX()
	var y=getY()
	self.position.x+=x*SPEED*delta
	self.position.y+=y*SPEED*delta

func _physics_process(delta):
	movement(delta)
 
