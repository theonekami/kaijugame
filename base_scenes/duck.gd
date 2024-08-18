extends Area2D

var speed=300

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("walk")
	pass # Replace with function body.

func _physics_process(delta):
	position.x += speed * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if area.is_in_group("cars"):
		$AnimatedSprite2D.play("death")
		 # Replace with function body.


func _on_animated_sprite_2d_animation_finished():
	queue_free() # Replace with function body.
