extends Area2D
var enemy = [
	preload("res://assets/yellow_character.png"),
	preload("res://assets/red_character.png"),
	preload("res://assets/purple_character.png")
	]
var speed = 500
var direction = Vector2(-1,0)
var enemy_spawn_direction = [Vector2(0,1),Vector2(1,1),Vector2(1,0),Vector2(1,-1),Vector2(0,-1),Vector2(-1,-1),Vector2(-1,0),Vector2(-1,1)]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = enemy.pick_random()
	direction = enemy_spawn_direction.pick_random()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+= direction*speed*delta

#func cretaeObject():
	##$Object.add_child()
	#pass
