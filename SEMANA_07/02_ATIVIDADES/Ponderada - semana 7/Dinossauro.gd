extends KinematicBody2D


#Comandos para fazer o dinossauro se movimentar somente no eixo X na fase 2
func _physics_process(delta):
	var movimento = Vector2.ZERO
	movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	move_and_slide(movimento*300) #Velocidade do dinossauro está em 300
