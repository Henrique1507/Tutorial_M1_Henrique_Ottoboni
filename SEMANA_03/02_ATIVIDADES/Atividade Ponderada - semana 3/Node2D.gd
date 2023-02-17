extends Node2D
#Crie uma lista preenchida e mostre na tela
#Crie uma lista vazia, preencha com os dados enviados pelo usuário e mostre na tela
#Crie uma função que retorne um texto na tela
#Crie uma função que receba um valor inserido pelo usuário e retorne na tela.

var listaPreenchida = []

#Atividade 1
#Quando o botão "Lista Preenchida" for pressionado, a lista aparecerá no RichTextLabel
func _on_listaPreenchida_pressed():
	listaPreenchida = ["-realizar autoestudo", "-limpar a casa", "-fazer almoço", "-fazer compras", "-fazer academia"]
	$RichTextLabel.text = String(listaPreenchida[0]) + "\n" + String(listaPreenchida[1]) + "\n" + String(listaPreenchida[2]) + "\n" + String(listaPreenchida[3]) + "\n" + String(listaPreenchida[4])


#Atividade 2
#Quando o botão "Lista Vazia" for pressionado, o que o usuário digitou aparecerá no RichTextLabel
func _on_listaVazia_pressed():
	
	var dadosUsuario = $LineEdit2.text
	$RichTextLabel.text = $RichTextLabel.text + String(dadosUsuario) + "\n"


#Atividade 3
#Quando o botão "retornar texto" for pressionado, aparecerá no RichTextLabel a frase abaixo
func _on_funcaoTexto_pressed():

	$RichTextLabel.text = "Henrique tem 17 anos e está cursando Engenharia de Software no INTELI"



#Atividade 4
#Quando o botão "receber valor" for pressionado, aparecerá no RichTextLabel os números digitados
func _on_funcaoReceba_pressed():
	
	var valorUsuario = String(float($LineEdit.text))
	$RichTextLabel.text = valorUsuario



#Botão vermelho para apagar o que foi escrito
func _on_Button_pressed():
	$RichTextLabel.text = ""
