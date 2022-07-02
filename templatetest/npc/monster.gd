extends KinematicBody2D

signal StartDialogByInput

func _input(event):
	if event.is_action_pressed("ui_accept"):
			emit_signal("StartDialogByInput")
