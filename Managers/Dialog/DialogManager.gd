extends Area2D

var active = false
export var Responds_to_Actor: String = ''
export var TimeLine: String = ''
export var pauseMode: bool = false
export var SpeechBubble: bool = false

func _ready():
	var body = get_parent()
	if !SpeechBubble:
		body.connect("StartDialogByInput",self,"_on_startdialog_by_input")
	else:
		print("speechbubble")
		
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func unpause(timeline_name):
	get_tree().paused = false

func _on_NPC_body_entered(body):
	print("entered: ", body)
	if body.name == Responds_to_Actor:
		if !SpeechBubble:
			print("Not speechbubble")
			active = true
		else:
			_on_startdialog_by_SpeechBubble()

func _on_NPC_body_exited(body):
	print("exited: ", body)
	if body.name == Responds_to_Actor:
		active = false

func _on_startdialog_by_input():
	if get_node_or_null('DialogNode') == null and active:
		get_tree().paused = pauseMode
		var dialog = Dialogic.start(TimeLine)
		dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		dialog.connect('timeline_end', self, 'unpause')
		add_child(dialog)

func _on_startdialog_by_SpeechBubble():
	if get_node_or_null('DialogNode') == null:
		var dialog = Dialogic.start(TimeLine)
		dialog.connect('timeline_end', self, 'unpause')
		add_child(dialog)
