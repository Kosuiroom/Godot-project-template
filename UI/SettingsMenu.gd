extends Control

onready var audio = $Test/AudioStreamPlayer
onready var action_list = $SettingTabs/Input/MarginContainer/VBoxContainer/ScrollContainer/ActionList

func _on_MasterVolumeSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)


func _on_MusicVolumeSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)
