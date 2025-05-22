extends Area2D

''' SEÑALES '''
func _on_body_entered(body):
	if body is Player:
		body.damage_ctrl()
