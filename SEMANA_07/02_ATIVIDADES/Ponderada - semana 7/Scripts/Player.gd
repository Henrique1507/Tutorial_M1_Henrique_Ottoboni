extends KinematicBody2D



func _ready():
	pass # Replace with function body.







#Comandos para fazer o dinossauro se movimentar no labirinto
func _physics_process(delta):
	var movimento = Vector2.ZERO
	movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	movimento.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	move_and_slide(movimento*300) #A velocidade do dinossauro está em 300


#Quando o dinossauro entrar na imagem do universo, será direcionado a outra cena
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scenes/Fase2.tscn")

#Botão de voltar para o menu inicial
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")
