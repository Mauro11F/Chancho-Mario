extends CharacterBody2D
class_name Enemy

@export_category("<!> Config")

@export_group("Options")
@export var health : int = 1
@export var score : int = 100

@export_group("Motion")
@export var speed : int = 20
@export var gravity : int = 16

var direction : int = 1 #Como el enemigo se mueve solo, definimos su direccion con una variable

func _physics_process(_delta):
	if health > 0:
		motion_ctrl()

func motion_ctrl() -> void:
	$Sprite.scale.x = direction
	
	#Si detecta un precipicio o choca con una pared, cambia su direccion
	if not $Sprite/RayGround.is_colliding() or is_on_wall():
		direction *= -1
	
	velocity.x = direction * speed
	velocity.y += gravity
	move_and_slide()

#Esta funcion la llama el Player,pasandole como parámetro el daño recibido, con la posibilidad de pasarle un daño variable, si en algun momento añadimos "power-ups"
func damage_ctrl(damage : int) -> void:
	health -= damage
	
	if health <= 0:
		$Sprite.set_animation("Death")
		#call_deferred es llamada segura, set_deferred es establecer un parámetro seguro, que en este caso es necesario por que estamos desactivando la colision
		$Collision.set_deferred("disabled", true)
		# Si desactivamos la colision, pero no seteamos la gravedad a 0, el personaje se hundira mientras se reproduce la animacion de muerte
		gravity = 0
		GLOBAL.score += score # Y sumamos al score el puntaje

''' SEÑAL '''
func _on_sprite_animation_finished():
	if $Sprite.animation == "Death":
		queue_free()

func _on_area_hit_body_entered(body):
	if body is Player and health > 0:
		body.damage_ctrl()
