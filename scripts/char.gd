extends KinematicBody2D
var Class = preload("res://scripts/charClass.gd").new()
func _ready():
	Class.SetClass("Poweruper")
	print(str(Class.charClass))
