extends Node2D

#Foi comentado os erros encontrados no código original e as novas adições para que o programa
#seja executado corretamente

var teste = false
var valor = 0
var numero = 0 #Tirei o acento gráfico da variável numero
var lista = [] #Adicionei a palavra "var"
var nome = " " #Adicionei a variável "nome"

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Tirei o acento gráfico de numero e adicionei o $ no LineEdit
	nome = $LineEdit.text.split(" ") [1] #Inverti para que o LineEdit receba o nome e o numero e adicionei split para que divida em listas diferentes 
	

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #Coloquei a letra "n" em minúsculo para funcionar
		lista.append(numero) #Neste caso eu também alterei para "n" minúsculo
	$Label.text = String(numero) #Adicionei String para a variável número ser exibida na Label


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	#Removi while(len(lista)): para que saísse de um loop infinito
	
	var cont = 0 #Adicionei a palavra "var"
	for numbers in lista:
			if numero % 2 != 0:
				cont += 1
				
				
			#Soma dos números forem ímpar, a palavra "baldo" é adicionada ao final do nome. Caso contário, nada acontece
			if cont !=0:
				$Label2.text = nome +" baldo"
			else:
				$Label2.text = nome

