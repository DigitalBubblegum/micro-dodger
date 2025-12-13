extends Node2D
var enemy_scene: PackedScene = preload("res://scenes/enemy.tscn")
var enemy_spawn_direction = [Vector2(0,1),Vector2(1,1),Vector2(1,0),Vector2(1,-1),Vector2(0,-1),Vector2(-1,-1),Vector2(-1,0),Vector2(-1,1)]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
#	TODO spawnner which spawns 
	var x =$Player.get_position().x
	var y =$Player.get_position().y
	var viewport_size =  get_viewport().get_visible_rect().size
	var r = sqrt((viewport_size.x*viewport_size.x)+(viewport_size.y*viewport_size.y))/2
	#print(radius)
	$Player/Spawner.get_children()[0].set_position(Vector2(x+(r*cos(45)),y+(r*sin(45))))
	$Player/Spawner.get_children()[1].set_position(Vector2(x+(r*cos(90)),y+(r*sin(90))))
	$Player/Spawner.get_children()[2].set_position(Vector2(x+(r*cos(135)),y+(r*sin(135))))
	$Player/Spawner.get_children()[3].set_position(Vector2(x+(r*cos(180)),y+(r*sin(180))))
	$Player/Spawner.get_children()[4].set_position(Vector2(x+(r*cos(225)),y+(r*sin(225))))
	$Player/Spawner.get_children()[5].set_position(Vector2(x+(r*cos(270)),y+(r*sin(270))))
	$Player/Spawner.get_children()[6].set_position(Vector2(x+(r*cos(315)),y+(r*sin(315))))
	$Player/Spawner.get_children()[7].set_position(Vector2(x+(r*cos(360)),y+(r*sin(360))))
	print($Player/Spawner.get_children()[0].get_position(),$Player/Spawner.get_children()[1].get_position(),$Player/Spawner.get_children()[2].get_position(),$Player/Spawner.get_children()[3].get_position(),$Player/Spawner.get_children()[4].get_position(),$Player/Spawner.get_children()[6].get_position(),$Player/Spawner.get_children()[7].get_position())
	pass


func _on_easy_enemy_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate() as Area2D
	var pos_marker = $Player/Spawner.get_children().pick_random() as Marker2D
	enemy.position = pos_marker.position
	$Objects.add_child(enemy)
