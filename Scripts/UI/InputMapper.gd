extends Node

var inputs = {
	'mv_up' : KEY_UP,
	'mv_down' : KEY_DOWN,
	'mv_left' : KEY_LEFT,
	'mv_right' : KEY_RIGHT
}

func change_action_key(action_name, key_scancode):
	erase_action_events(action_name)
	
	var new_event = InputEventKey.new()
	new_event.set_scancode(key_scancode)
	InputMap.action_add_event(action_name,new_event)

	
	
func erase_action_events(action_name):
	var input_events = InputMap.get_action_list(action_name)
	for event in input_events:
		InputMap.action_erase_event(action_name, event)
