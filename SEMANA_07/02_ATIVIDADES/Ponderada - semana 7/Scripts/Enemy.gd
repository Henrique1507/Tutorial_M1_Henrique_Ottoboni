extends KinematicBody2D

#Adicionei a variável speed para determinar a velocidade com que as pedras caem
var speed = 450


func _process(delta):
	global_position.y += speed * delta




