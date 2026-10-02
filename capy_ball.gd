extends RigidBody2D
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready(): # Getting the screen size at start
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = position.clamp(Vector2.ZERO, screen_size)
