extends Area3D

# Ruta de la escena 2D
@export var escena_2d: String = "res://scenes/2d_player.tscn"

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	# Comprueba que sea el jugador
	if body.is_in_group("player"):
		get_tree().change_scene_to_file(escena_2d)
