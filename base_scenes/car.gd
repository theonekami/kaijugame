extends Area2D

var speed
var speed_x
var dir=0

@export var type=2

signal enter_car(car)
# Called when the node enters the scene tree for the first time.
func _ready():
	match type:
		1:
			$car.play("1_beat")
		2:
			$car.play("2_beat")
	speed=300
	speed_x=5

#func _input(event):
	#if event.is_action_pressed("debug"):
		#move()
func _physics_process(delta):
	$Sprite2D.set_modulate(Color(1,1,1))
	position.y += speed * delta
	position.x -= speed_x*delta*dir
	#if position.y < 500 and position.y > -50:
		#$Sprite2D.set_modulate(Color(0.337, 0.349, 0.325))
	#elif position.y < -50:
		#queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.

#func move():
	#position.y += speed 
	#

func _process(delta):
	pass

func dies():
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free() # Replace with function body.
