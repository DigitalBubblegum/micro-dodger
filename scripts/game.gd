extends Node2D
var enemy_scene: PackedScene = preload("res://scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_easy_enemy_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate() as Area2D
	var pos_marker = $Spawner.get_children().pick_random() as Marker2D
	enemy.position = pos_marker.position
	$Objects.add_child(enemy)
