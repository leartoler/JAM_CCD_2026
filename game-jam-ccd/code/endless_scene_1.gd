extends Node2D

@export var speed := 100.0
@export var map_height := 230.0

@onready var map1 = $TileMapLayer
@onready var map2 = $TileMapLayer2

func _process(delta):
	map1.position.y -= speed * delta
	map2.position.y -= speed * delta

	if map1.position.y < -map_height:
		map1.position.y = map2.position.y + map_height

	if map2.position.y < -map_height:
		map2.position.y = map1.position.y + map_height
		
		
		
