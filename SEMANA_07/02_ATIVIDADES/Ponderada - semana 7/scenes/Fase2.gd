extends Sprite

#Variável para carregar a cena do inimigo (pedras)
var enemy = preload("res://scenes/Enemy.tscn")


func _ready():
	pass
	
	
#Comandos para fazer as pedras surgirem de maneira aleatória nos Position2D que coloquei
func _on_SpawnTimer_timeout(): #Coloquei o tempo de espera em 0.5 para as pedras caírem
	
	var enemy_instance = enemy.instance()
	add_child(enemy_instance)
	enemy_instance.position = $SpawnLocation.position
	
	var nodes = get_tree().get_nodes_in_group("spawn")
	var node = nodes[randi() % nodes.size()]
	var position = node.position
	$SpawnLocation.position = position
