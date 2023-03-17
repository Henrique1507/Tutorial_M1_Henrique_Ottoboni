extends Sprite

var speed = 450


func _process(delta):
	global_position.y += speed * delta


#Comando para fazer com que a cada vez que as pedras encostarem num CollisionShape, carregará a cena de GameOver
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scenes/GameOver.tscn")
