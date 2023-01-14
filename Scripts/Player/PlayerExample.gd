#extends KinematicBody2D
#
#onready var fsm := $StateMachine
#onready var sprite = $Sprite
#onready var animation = $AnimationPlayer
#onready var hurtbox = $Hurtbox
#
#const invincibility = 1.5
#
#var velocity := Vector2.ZERO
#export var playerspeed = 200.0
#
#export var jump_height : float
#export var jump_time_to_peak : float
#export var jump_time_to_descent : float
#
#onready var jump_velocity : float = ((2.0 * jump_height) / jump_time_to_peak) * -1.0
#onready var jump_gravity : float = ((-2.0 * jump_height) / (jump_time_to_peak * jump_time_to_peak)) * -1.0
#onready var fall_gravity : float = ((-2.0 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1.0
#
#func get_gravity() -> float:
#	return jump_gravity if velocity.y < 0.0 else fall_gravity
#
#func _on_AnimationPlayer_animation_finished(anim_name):
#	animation.play("Player_Idle")
#
#func damage(amount):
#		animation.play("Player_Damage")
#		IsKilled()
#
#func IsKilled():
#	Global.is_dead = true
#	print("player died")
#	yield(get_tree().create_timer(1), "timeout")
#	get_tree().change_scene("res://GameScene/Endgame.tscn")
#
#func _on_Hurtbox_body_entered(body):
#	print("body: ", body)
#	if "Enemy" in body.name:
#		if !hurtbox.is_invinc:
#			animation.play("Player_Damage")
#			hurtbox.start_invinc(invincibility)
#			damage(1)
#
#
#
#func _on_Spikes_killplayer():
#	IsKilled()
