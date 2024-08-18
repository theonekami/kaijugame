extends Node2D

var spawn=Vector2(30,0)
var note = load("res://base_scenes/duck.tscn")
var duck_no=0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func duckkie():
	var instance = note.instantiate()
	instance.position=spawn
	instance.name="duck"+str(duck_no)

	instance.add_to_group("ducks")
	$duck.add_child(instance)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_conductor_report_beat(beat_position):
	duckkie() # Replace with function body.
