extends KinematicBody2D
var health = 100
var stamina = 100


var fireResist = 0.15
var aquaResist = 0.15
var Physic = 0.05

var WALK_SPEED = 250
var Class = preload("res://scripts/charClass.gd").new()
func _ready():
	Class.SetClass("Poweruper")
	print(str(Class.charClass))
	set_fixed_process(true)
func _fixed_process(delta):
	Moving(delta)
	
	
	
	
func Moving(del):
	var movePos = Vector2()
	if Input.is_action_pressed("walk_up"):
		movePos.y -= 1
	if Input.is_action_pressed("walk_down"):
		movePos.y += 1
	if Input.is_action_pressed("walk_left"):
		movePos.x -= 1
	if Input.is_action_pressed("walk_right"):
		movePos.x += 1
		
	movePos = movePos.normalized()*WALK_SPEED*del
	move(movePos)