extends Node2D

var current_stomp=1
var stomp_line="stomp_"
var stomp_playing=false

# Called when the node enters the scene tree for the first time.
func _ready():
	stomp()
	pass # Replace with function body.

func stomp():
	if not(stomp_playing):
		var stomp_play=stomp_line+str(current_stomp)
		$AnimatedSprite2D.play(stomp_play)
		current_stomp+=1
		if current_stomp==5:
			current_stomp=1
		stomp_playing=true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_base_game_kill_left():
	stomp() # Replace with function body.


func _on_base_game_kill_right():
	stomp() # Replace with function body.


func _on_back_ground_hit_left():
	stomp() # Replace with function body.


func _on_back_ground_hit_right():
	stomp() # Replace with function body.


func _on_animated_sprite_2d_animation_finished():
	stomp_playing=false # Replace with function body.
