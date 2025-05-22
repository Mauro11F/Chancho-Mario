extends Node2D

func _ready():
	# como prevencion colocamos que pausa sera *falso* cada inicio del nivel
	# ya que al morir GUI pondra en pausa el juego
	get_tree().paused = false
	GLOBAL.score = 0
	
