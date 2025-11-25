extends CharacterBody2D
var direction:Vector2 =  Vector2.ZERO
var speed:int = 900
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")
	#position += direction * speed
	velocity = direction * speed
	move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
