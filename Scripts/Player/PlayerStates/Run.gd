# Run.gd
extends PlayerState

func physics_update(delta: float) -> void:
	var input_direction_x = (
		Input.get_action_strength("mvRight")
		- Input.get_action_strength("mvLeft")
	)
	if Input.is_action_pressed("mvRight"):
		player.sprite.flip_h = false
	if Input.is_action_pressed("mvLeft"):
		player.sprite.flip_h = true
	
	
	player.velocity.x = player.playerspeed * input_direction_x
	player.velocity.y = player.get_gravity() * delta
	player.velocity = player.move_and_slide(player.velocity, Vector2.UP)

	if Input.is_action_just_pressed("Jump"):
		state_machine.transition_to("Jump", {do_jump = true})
	if is_equal_approx(input_direction_x, 0.0):
		state_machine.transition_to("Idle")
