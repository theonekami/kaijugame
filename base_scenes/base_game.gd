extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Conductor.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_conductor_report_beat(beat_position):
	print(beat_position) 
	print("hit")# Replace with function body.
