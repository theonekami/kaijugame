extends Node2D

var spawn_1_beat = 1
var spawn_2_beat = 0
var spawn_3_beat = 0
var spawn_4_beat = 0
var car_no=0
var pressed_l=false

var z=[]

var note = load("res://base_scenes/car.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	$Conductor.play_with_beat_offset(0)


func _spawn_notes(to_spawn):
	if to_spawn > 0:
		var instance = note.instantiate()
		instance.position=Vector2(100,0)
		instance.name="car"+str(car_no)
		car_no+=1
		$cars.add_child(instance)
		z.append(instance)


func _on_conductor_report_measure(measure_position):
	if measure_position == 1:
		_spawn_notes(spawn_1_beat)
	elif measure_position == 2:
		_spawn_notes(spawn_2_beat)
	elif measure_position == 3:
		_spawn_notes(spawn_3_beat)
	elif measure_position == 4:
		_spawn_notes(spawn_4_beat)


func _on_conductor_report_beat(beat_position):
	if beat_position > 34:
		spawn_1_beat = 1
		spawn_2_beat = 1
		spawn_3_beat = 1
		spawn_4_beat = 1



func _on_state_machine_left_press(number):
	print(number)
	pressed_l=true
	print(car_no)
	var y =$cars.get_child(0)
	if y:
		y.free() 
