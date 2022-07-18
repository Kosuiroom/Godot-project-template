extends Control

onready var startbtn = $MenuItems/Return
onready var Buttonsound = $Buttonsound

func _ready():
	startbtn.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	

func _on_Return_pressed():
	Buttonsound.play()
	get_tree().change_scene("res://UI/Menues/StartMenu.tscn")
