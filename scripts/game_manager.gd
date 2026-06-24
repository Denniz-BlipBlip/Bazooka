extends Node

var point:int=0
@onready var score: Label = $Score

func  scoreCounter():
	self.point+=1
	self.score.text="You collected: "+str(point)+" coins"
