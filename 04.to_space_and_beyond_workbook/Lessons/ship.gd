extends Sprite2D

var max_speed := 600.0

var velocity := Vector2(0, 0)

func _process(delta:float) -> void:
	var direction := Vector2(0, 0)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")
	
	if direction.length() >1.0:
		direction = direction.normalized()
	
	velocity = direction * max_speed
	position += velocity * delta
	
	if direction.length() > 0.0:
		rotation = velocity.angle()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
