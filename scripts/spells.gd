

export(int, "Fire", "Aqua", "Physic") var typeDamage



func _ready():
	pass




func Deal_Damage(target, amount, type):
	if type == "Fire":
		target.health -= amount * (1 - target.fireResist)
	elif type == "Aqua":
		target.health -= amount * (1 - target.fireAqua)
	elif type == "Physic":
		target.health -= amount * (1 - target.firePhysic)