extends KinematicBody2D







func _physics_process(delta):
	var movimento = Vector2.ZERO
	movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	move_and_slide(movimento*300)
