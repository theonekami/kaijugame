extends Node2D
var current_mod_left=0
var current_mod_right=0
var area_l=[]
var area_r=[]
signal entered_l
signal exited_l
signal entered_r
signal exited_r

var note = load("res://base_scenes/duck.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_left_area_good_area_entered(area):
	if area.is_in_group("cars"):
		current_mod_left=1 
		area_l.append(area)
		entered_l.emit()# Replace with function body.


func _on_left_area_cool_area_entered(area):
	current_mod_left=2 # Replace with function body.
	

func _on_left_area_perfect_area_entered(area):
	current_mod_left=3 # Replace with function body.
	

func _on_left_area_perfect_area_exited(area):
	current_mod_left=2 # Replace with function body.
	

func _on_left_area_cool_area_exited(area):
	current_mod_left=1 # Replace with function body.
	

func _on_left_area_good_area_exited(area):
	current_mod_left=0 # Replace with function body.
	exited_l.emit()
	area_l.pop_front()

func _on_base_game_kill_left():
	if len(area_l):
		area_l[0].dies()


func _on_right_area_good_area_entered(area):
	if area.is_in_group("cars"):
		current_mod_right=1 
		area_r.append(area)
		entered_r.emit()#th function body.


func _on_right_area_cool_area_entered(area):
	current_mod_right=2 # Replace with function body.


func _on_right_area_perfect_area_entered(area):
	current_mod_right=3 


func _on_right_area_perfect_area_exited(area):
	current_mod_left=2 # Replace with function body.


func _on_right_area_cool_area_exited(area):
	current_mod_left=1 # Replace with function body.


func _on_right_area_good_area_exited(area):
	current_mod_right=0 # Replace with function body.
	exited_r.emit()
	area_r.pop_front() # Replace with function body.


func _on_base_game_kill_right():
	if len(area_r):
		area_r[0].dies()
