extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func pause_func():
	if not(get_tree().paused):
		get_tree().paused=true
		$Sprite2D.visible=true
	else:
		get_tree().paused=false
		$Sprite2D.visible=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause_func()


func _on_texture_button_pressed():
	pause_func() # Replace with function body.
