extends Sprite



#Botão para mudar de cena
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")
