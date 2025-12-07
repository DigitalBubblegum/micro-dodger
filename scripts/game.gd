extends Node2D
var enemy_scene: PackedScene = preload("res://scenes/enemy.tscn")
var enemy_spawn_direction = [Vector2(0,1),Vector2(1,1),Vector2(1,0),Vector2(1,-1),Vector2(0,-1),Vector2(-1,-1),Vector2(-1,0),Vector2(-1,1)]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
#	TODO spawnner which spawns 
	#var x =$Player.get_position().x
	#var y =$Player.get_position().y
	#$Player/Spawner.get_children()[0].set_position(Vector2(x,y)*enemy_spawn_direction[0])
	#$Player/Spawner.get_children()[1].set_position(Vector2(x,y)*enemy_spawn_direction[1])
	#$Player/Spawner.get_children()[2].set_position(Vector2(x,y)*enemy_spawn_direction[2])
	#$Player/Spawner.get_children()[3].set_position(Vector2(x,y)*enemy_spawn_direction[3])
	#$Player/Spawner.get_children()[4].set_position(Vector2(x,y)*enemy_spawn_direction[4])
	#$Player/Spawner.get_children()[5].set_position(Vector2(x,y)*enemy_spawn_direction[5])
	#$Player/Spawner.get_children()[6].set_position(Vector2(x,y)*enemy_spawn_direction[6])
	#$Player/Spawner.get_children()[7].set_position(Vector2(x,y)*enemy_spawn_direction[7])
	#print($Player/Spawner.get_children()[0].get_position(),$Player/Spawner.get_children()[1].get_position(),$Player/Spawner.get_children()[2].get_position(),$Player/Spawner.get_children()[3].get_position(),$Player/Spawner.get_children()[4].get_position(),$Player/Spawner.get_children()[6].get_position(),$Player/Spawner.get_children()[7].get_position())
	pass


func _on_easy_enemy_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate() as Area2D
	var pos_marker = $Player/Spawner.get_children().pick_random() as Marker2D
	enemy.position = pos_marker.position
	$Objects.add_child(enemy)
