extends Control

onready var startbtn = $MenuItems/Start
onready var Buttonsound = $Buttonsound



func _ready():
	startbtn.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	MusicController.playgame()
	
func _on_Start_pressed():
	get_tree().change_scene("res://GameScene/GameWorld.tscn")



func _on_Exit_pressed():
	get_tree().quit()



func _on_Start_focus_exited():
	Buttonsound.play()



func _on_Exit_focus_exited():
	Buttonsound.play()

