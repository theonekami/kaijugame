extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Animation.play("bob")
	$"helicpter 1".play("default")
	$"helicpter 2".play("default")
	$"helicpter 3".play("default")
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_conductor_report_beat(beat_position):
	$Animation.play("bob") # Replace with function body.


func _on_back_ground_hit_left():
	$Animation.play("Happy") # Replace with function body.


func _on_animation_animation_finished():
	$Animation.play("bob")  # Replace with function body.
