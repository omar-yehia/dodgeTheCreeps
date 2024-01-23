extends Area2D
var SPEED = 400
@onready var runner = $runner

@onready var rect=get_viewport_rect().size
	
func getDirection():
	var direction=Input.get_vector("move_left","move_right","move_up","move_down")
	return direction

func movement(delta,direction):
	self.position+=direction*SPEED*delta
	position.x=clamp(position.x,0,rect.x-20)
	position.y=clamp(position.y,0,rect.y-20)
	
func _process(delta):
	var direction=getDirection()
	runner.flip_h=direction.x<0
	movement(delta,direction)
	#if Input.is_action_pressed("ui_right"):
	if abs(direction)>Vector2.ZERO:
		runner.play("run")
	else:
		runner.stop()
 
func die():
	self.queue_free()
	

#func _physics_process(delta):
	#movement(delta)
  
func _on_body_entered(body):
	die()
	print('body',body)	
