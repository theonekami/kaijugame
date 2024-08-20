extends Node2D


var a_time = null
var b_time = null
var c_time = null
var d_time = null

var e_time=null
var f_time=null
var g_time=null
var h_time=null
var max_milliseconds = 700
var number_of_keys_l=0
var number_of_keys_r=0
var num_prev_l=0
var num_prev_r=0
signal left_press(number)
signal right_press(number)
var a_ongoing=false
var b_ongoing=false

func x_check(now, x_time):
	if (now - x_time < max_milliseconds):
		return true
	else:
		return false

func _physics_process(delta):
	var a = Input.is_action_pressed("one_hit_l")
	var b = Input.is_action_pressed("two_hit_l")
	var c = Input.is_action_pressed("three_hit_l")
	var d = Input.is_action_pressed("four_hit_l")
	
	if a and b and c and d and not($input_buffer.time_left):
		print("all four")
		left_press.emit(4)
		$input_buffer.start()
	elif a and b and c and not($input_buffer.time_left):
		print("all three")
		left_press.emit(3)
		$input_buffer.start()
	elif a and b and not($input_buffer.time_left):
		print("all two")
		left_press.emit(2)
		$input_buffer.start()
	elif a and not($input_buffer.time_left):
		print("all one")
		left_press.emit(1)
		$input_buffer.start()

	var e = Input.is_action_pressed("one_hit_r")
	var f = Input.is_action_pressed("two_hit_r")
	var g = Input.is_action_pressed("three_hit_r")
	var h = Input.is_action_pressed("four_hit_r")
	
	if e and f and g and h and not($input_buffer2.time_left):
		print("all four")
		right_press.emit(4)
		$input_buffer2.start()
	elif e and f and g and not($input_buffer2.time_left):
		print("all three")
		right_press.emit(3)
		$input_buffer2.start()
	elif e and f and not($input_buffer2.time_left):
		print("all two")
		right_press.emit(2)
		$input_buffer2.start()
	elif e and not($input_buffer2.time_left):
		print("all one")
		right_press.emit(1)
		$input_buffer2.start()
	
	#if a and $input_buffer.time_left==0 and b and c:
		#if b:
			#if c:
				#if d:
					#print("signal 4 here")
				#else:
					#print("signal 3 here")
			#else:
				#print("signal 2 here")
		#else:
			#print("signal 1 here")
	#
		##if !a_ongoing and !b_ongoing:
			##print("both together")
		##elif !a_ongoing:
			##print("b then a")
		##elif !b_ongoing:
			##print("a then b")
		#$input_buffer.start()
	#elif a and !a_ongoing:
		#print("a!")
	#elif b and !b_ongoing:
		#print("b!")
#
	#a_ongoing = a
	#b_ongoing = b
#
#func _input(event):
	#if event is InputEventAction and event.pressed:
		#if event.keycode == KEY_A:
			#if event.shi:
				#print("Shift+T was pressed")
			#else:
				#print("T was pressed")

#func _input(event):
	#event.is_action_just_pressed("one_hit_l"):
		#pri

	
#func _process(delta):
	#if Input.is_action_pressed("one_hit_l"):
		#if Input.is_action_pressed("two_hit_l"):
			#if Input.is_action_pressed("three_hit_l"):
				#if Input.is_action_pressed("four_hit_l"):
					#print("four keys")
				#else:
					#print("three keys")
			#else:
				#print("two hit")
		#else:
			#print("one_hit")
	#if Input.is_action_pressed("two_hit_l"):
		#if Input.is_action_pressed("one_hit_l"):
			#print("hello")


#func _physics_process(delta):
	#var now = Time.get_ticks_msec()
	##left keyboard
	#if Input.is_action_pressed("Left_lane_1"):
		#number_of_keys_l+=1
		##if b_time != null:
			##if c_time !=null:
				##if d_time !=null:
					##if x_check(now,b_time) and x_check(now,c_time) and x_check(now,d_time):
						##print("h1")
				##elif x_check(now,b_time) and x_check(now,c_time):
					##print("h2")
			##elif x_check(now,b_time):
				##print("h3")
			##else:
				##print("b then a")
		##else:
			##print("a!")
		#
		##signal_here
		#a_time = now
	#
	#if num_prev_l==number_of_keys_l and num_prev_l!=0:
		#print(number_of_keys_l)
		#left_press.emit(number_of_keys_l)
	#num_prev_l=number_of_keys_l
	#
	#if Input.is_action_just_released("Left_lane_1"):
		#a_time = null
		#number_of_keys_l=0
		#
	#if Input.is_action_pressed("Left_lane_2"):
		#b_time = now
	#
	#if Input.is_action_just_released("Left_lane_2"):
		#b_time = null
		#number_of_keys_l=0
	#
	#if Input.is_action_pressed("Left_lane_3"):
		#c_time = now
	#
	#if Input.is_action_just_released("Left_lane_3"):
		#c_time = null
		#number_of_keys_l=0
	#
	#if Input.is_action_pressed("Left_lane_4"):
		#d_time = now
	#
	#if Input.is_action_just_released("Left_lane_4"):
		#d_time = null
		#number_of_keys_l=0
	#
	#if Input.is_action_pressed("Right_lane_1"):
		#number_of_keys_r+=1
		##if f_time != null:
			##if g_time !=null:
				##if h_time !=null:
					##if x_check(now,f_time) and x_check(now,g_time) and x_check(now,h_time):
						##print("h1")
				##elif x_check(now,f_time) and x_check(now,g_time):
					##print("h2")
			##elif x_check(now,f_time):
				##print("h3")
			##else:
				##print("b then a")
		##else:
			##print("a!")
		##print(number_of_keys_r)
		##signal_here
		#e_time = now
	#if num_prev_r==number_of_keys_r and num_prev_r!=0:
		#print(number_of_keys_r)
		#right_press.emit(number_of_keys_r)
	#num_prev_r=number_of_keys_r
	#
	#if Input.is_action_just_released("Right_lane_1"):
		#e_time = null
		#number_of_keys_r=0
		#
	#if Input.is_action_pressed("Right_lane_2"):
		#f_time = now
	#
	#if Input.is_action_just_released("Right_lane_2"):
		#f_time = null
		#number_of_keys_r=0
#
#
	#if Input.is_action_pressed("Right_lane_3"):
		#g_time = now
	#
	#if Input.is_action_just_released("Right_lane_3"):
		#g_time = null
		#number_of_keys_r=0
#
	#
	#if Input.is_action_pressed("Right_lane_4"):
		#h_time = now
	#
	#if Input.is_action_just_released("Right_lane_4"):
		#h_time = null
		#number_of_keys_r=0


func _on_input_buffer_timeout():
	print("yo")
	#var a = Input.is_action_pressed("one_hit_l")
	#var b = Input.is_action_pressed("two_hit_l")
	#var c = Input.is_action_pressed("three_hit_l")
	#var d = Input.is_action_pressed("four_hit_l")
	#if a:
		#if b:
			#if c:
				#if d:
					#print("signal 4 here")
				#else:
					#print("signal 3 here")
			#else:
				#print("signal 2 here")
		#else:
			#print("signal 1 here")
		#
	#
		##if !a_ongoing and !b_ongoing:
			##print("both together")
		##elif !a_ongoing:
			##print("b then a")
		##elif !b_ongoing:
			##print("a then b")
		#$input_buffer.start()
	##elif a and !a_ongoing:
		##print("a!")
	##elif b and !b_ongoing:
		##print("b!")
#
	#a_ongoing = a
	#b_ongoing = b
	 # Replace with function body.


func _on_input_buffer_2_timeout():
	print("yo") # Replace with function body.
