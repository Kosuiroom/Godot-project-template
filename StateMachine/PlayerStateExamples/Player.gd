class_name Player
extends KinematicBody2D

###Node initialization
onready var fsm := $StateMachine

var velocity
var speed: = 200.0
var jump: = 0.0
var health = 0
export var gravity = 500

###Player stats
export var PlayerSpeed := 200.0
export var PlayerJump := 200.0
export(int) var MaxHealth := 3
export var dashSpeed: = 500.0
var dashing = false
var NO_SLOPE = 64.0
var DashAmount = 1
