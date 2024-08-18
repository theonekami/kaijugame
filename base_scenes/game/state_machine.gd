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

func x_check(now, x_time):
	if (now - x_time < max_milliseconds):
		return true
	else:
		return false

func _input(event):
	var now = Time.get_ticks_msec()
	#left keyboard
	if event.is_action_pressed("Left_lane_1"):
		number_of_keys_l+=1
		#if b_time != null:
			#if c_time !=null:
				#if d_time !=null:
					#if x_check(now,b_time) and x_check(now,c_time) and x_check(now,d_time):
						#print("h1")
				#elif x_check(now,b_time) and x_check(now,c_time):
					#print("h2")
			#elif x_check(now,b_time):
				#print("h3")
			#else:
				#print("b then a")
		#else:
			#print("a!")
		
		#signal_here
		a_time = now
	
	if num_prev_l==number_of_keys_l and num_prev_l!=0:
		print(number_of_keys_l)
		left_press.emit(number_of_keys_l)
	num_prev_l=number_of_keys_l
	
	if event.is_action_released("Left_lane_1"):
		a_time = null
		number_of_keys_l=0
		
	if event.is_action_pressed("Left_lane_2"):
		b_time = now
	
	if event.is_action_released("Left_lane_2"):
		b_time = null
		number_of_keys_l=0
	
	if event.is_action_pressed("Left_lane_3"):
		c_time = now
	
	if event.is_action_released("Left_lane_3"):
		c_time = null
		number_of_keys_l=0
	
	if event.is_action_pressed("Left_lane_4"):
		d_time = now
	
	if event.is_action_released("Left_lane_4"):
		d_time = null
		number_of_keys_l=0
	
	if event.is_action_pressed("Right_lane_1"):
		number_of_keys_r+=1
		#if f_time != null:
			#if g_time !=null:
				#if h_time !=null:
					#if x_check(now,f_time) and x_check(now,g_time) and x_check(now,h_time):
						#print("h1")
				#elif x_check(now,f_time) and x_check(now,g_time):
					#print("h2")
			#elif x_check(now,f_time):
				#print("h3")
			#else:
				#print("b then a")
		#else:
			#print("a!")
		#print(number_of_keys_r)
		#signal_here
		e_time = now
	if num_prev_r==number_of_keys_r and num_prev_r!=0:
		print(number_of_keys_r)
		right_press.emit(number_of_keys_r)
	num_prev_r=number_of_keys_r
	
	if event.is_action_released("Right_lane_1"):
		e_time = null
		number_of_keys_r=0
		
	if event.is_action_pressed("Right_lane_2"):
		f_time = now
	
	if event.is_action_released("Right_lane_2"):
		f_time = null
		number_of_keys_r=0


	if event.is_action_pressed("Right_lane_3"):
		g_time = now
	
	if event.is_action_released("Right_lane_3"):
		g_time = null
		number_of_keys_r=0

	
	if event.is_action_pressed("Right_lane_4"):
		h_time = now
	
	if event.is_action_released("Right_lane_4"):
		h_time = null
		number_of_keys_r=0
