extends Node2D

var spawn_beats = [0, 0, 0, 0, 0, 0, 0, 0]
var beatmap_array
var car_no = 0
var pressed_l = false
var pressed_r = false

signal kill_left()
signal kill_right()

var z = []

var note = load("res://base_scenes/car.tscn")
var narrowest = 399
var widest = 399
var height = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	$Conductor.play_with_beat_offset(0)
	var label_text_res = "res://transfer/beatmap.txt"
	var file = FileAccess.open(label_text_res, FileAccess.READ)
	var text = file.get_as_text()
	beatmap_array = text.split(",\n", true) 
	

func _spawn_notes(to_spawn):
	if to_spawn > 0:
		var instance = note.instantiate()
		instance.position=Vector2(narrowest,height)
		instance.name="car"+str(car_no)
		instance.dir=1
		instance.add_to_group("cars")
		car_no+=1
		instance.type=to_spawn
		#kill_left.connect(instance.dies)
		$cars.add_child(instance)
		#$back_ground.background.connect()
		z.append(instance)
		
	if to_spawn< 0:
		var instance = note.instantiate()
		instance.position=Vector2(1080-widest,height)
		instance.name="car"+str(car_no)
		instance.dir=-1
		instance.add_to_group("cars")
		car_no+=1
		instance.type=to_spawn*-1
		$cars2.add_child(instance)
		z.append(instance)


func _on_conductor_report_measure(measure_position):
	_spawn_notes(spawn_beats[measure_position - 1])


func _on_conductor_report_beat(beat_position):
	print(beat_position / 8)
	var beats = beatmap_array[beat_position / 8]
	for n in range(0, 8): spawn_beats[n] = int(beats[n])

func _on_state_machine_left_press(number):
	pressed_l=true
	if $back_ground.current_mod_left:
		kill_left.emit()


func _on_state_machine_right_press(number):
	pressed_r=true
	if $back_ground.current_mod_left:
		kill_right.emit()

