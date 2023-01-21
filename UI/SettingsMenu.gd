extends Control

onready var audio = $Test/AudioStreamPlayer


func _on_Test_button_down():
	audio.play()



func _on_MasterVolumeSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)


func _on_MusicVolumeSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)
