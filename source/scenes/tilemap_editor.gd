extends Node2D

@onready var _tile_map:BLTileMap2D=$BLTileMap2D
@onready var _tile_editor :Control= $CanvasLayer/TilemapEditor

func _ready() -> void:
    _tile_map.init()
    var terrains = []
    for x in range(5):
        for y in range(5):
            terrains.append(Vector2i(x, y))
    _tile_map.set_terrains(terrains, "grass", false)
    _tile_map.update()
    _tile_editor.load_tilemap(_tile_map)
