extends CharacterBody2D
class_name Player

var axis : Vector2 = Vector2.ZERO
var death : bool = false

@export_category("<!> Config ")
@export_group("Required References")
@export var gui : CanvasLayer

@export_group("Motion")
@export var speed : int = 128
@export var gravity : int = 16
@export var jump : int = 368

func _physics_process(_delta):
	match death:
		true:
			death_ctrl()
		false:
			motion_ctrl()

func _input(event):
	if not death and is_on_floor() and event.is_action_pressed("ui_accept"):
		jump_ctrl(1)

func get_axis() -> Vector2: #Funcion para retornar la direccion pulsada
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	return axis.normalized()

func motion_ctrl() -> void:
	''' MOVIMIENTO '''
	#Esta linea va a controlar la direccion en la que mira el personaje, si el eje retornado es distinto de cero, entonces la escala del sprite en x es igual al eje retornado en x.
	if not get_axis().x == 0:
		$Sprite.scale.x = get_axis().x
	
	velocity.x = get_axis().x * speed
	velocity.y += gravity
	
	move_and_slide() #En el meotodo move_and_slide() va implicito el tiempo delta
	
	'''ANIMACIONES'''
	match is_on_floor():
		true:
			if not get_axis().x == 0:
				$Sprite.set_animation("Run")
			else:
				$Sprite.set_animation("Idle")
		false:
			if velocity.y < 0:# si es menor a cero, quiere decir que esta subiendo
				$Sprite.set_animation("Jump")
			else:
				$Sprite.set_animation("Fall")

func death_ctrl():
	velocity.x = 0 # bloqueamos el direccion en x
	velocity.y += gravity # Mantenemos la gravedad por si muere en el aire, asi no queda flotndo
	move_and_slide()

func jump_ctrl(power: float) -> void:
	# 
	velocity.y = -jump * power
	$Audio/Jump.play()

# Es una funcion que sera llamada por los enemigos que colicionaran con las "pisadas" del Player
func damage_ctrl() -> void:
	death = true
	$Sprite.set_animation("Dead")

''' SEÑALES '''
func _on_hit_point_body_entered(body):
	if body is Enemy and velocity.y >= 0:
		$Audio/Hit.play()
		body.damage_ctrl(1)
		jump_ctrl(0.75)

func _on_sprite_animation_finished():
	if $Sprite.animation == "Dead":
		gui.game_over()
