extends Control

func _on_iniciar_pressed():
	$Buttons/Select.play()
	get_tree().change_scene_to_file("res://Scenes/Level.tscn");

func _on_salir_pressed():
	get_tree().quit()
