extends Label

var score=0
func displayScore(score):
	self.text="score: "+str(score)
	
func _ready():
	displayScore(score)
	
func _on_timer_timeout():
	score+=1
	displayScore(score)
