extends Node

var gold = 0


func addGold(amount):
	gold += amount


func choice(a):
	print('choice function called!')
	print(a[0])
	call(a[1][0], a[1][1])
	

func _ready():
	print(gold)
	call('choice', ['Take money', ['addGold', 20]])
	print(gold)


func _process(delta):
	pass
