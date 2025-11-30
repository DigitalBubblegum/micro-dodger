extends Area2D
var enemy = [
	preload("res://assets/yellow_character.png"),
	preload("res://assets/red_character.png"),
	preload("res://assets/purple_character.png")
	]
var speed = 500
var direction = Vector2(-1,0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = enemy.pick_random()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+= direction*speed*delta
	print(position)

#func cretaeObject():
	##$Object.add_child()
	#pass
