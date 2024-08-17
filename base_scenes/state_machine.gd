extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


var a_time = null
var b_time = null
var c_time = null
var d_time = null
var max_milliseconds = 50
var number_of_keys=0

func b_check(now, x_time):
	if (now - x_time < max_milliseconds):
		return true
	else:
		return false

func _input(event):
	var now = Time.get_ticks_msec()
	if event.is_action_pressed("Left_lane_1"):
		number_of_keys+=1
		if b_time != null:
			if c_time !=null:
				if d_time !=null:
					
			if now - b_time < max_milliseconds:
				print("both together")
				print("two keysmash")
			else:
				print("b then a")
		else:
			print("a!")
		print(number_of_keys)
		a_time = now
	
	if event.is_action_released("Left_lane_1"):
		a_time = null
		number_of_keys=0
		print(number_of_keys)
	
	if event.is_action_pressed("Left_lane_2"):
		number_of_keys+=1
		if a_time != null:
			if now - a_time < max_milliseconds:
				print("both together")
				print("ll2")
			else:
				print("a then b")
		else:
			print("b!")
		b_time = now
	
	if event.is_action_released("Left_lane_2"):
		b_time = null
		number_of_keys=0
		print(number_of_keys)
#
#
