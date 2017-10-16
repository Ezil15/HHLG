export(int, "None", "Poweruper", "Releaser", "Materializator") var charClass

var distance = 0
var concentrate = 0
var speed = 0
var power = 0

var potentialDistance = 0
var potentialConcentrate = 0
var potentialSpeed = 0
var potentialPower = 0

func SetClass(chCl):
	charClass = chCl
	SetSpecial()
func SetSpecial():
	if charClass == "None":
		SetStat(0,0,0,0)
	elif charClass == "Poweruper":
		SetStat(0,10,0,15)
	elif charClass == "Releaser":
		SetStat(15,5,5,5)
	elif charClass == "Materializator":
		SetStat(25,2,40,1)

func SetStat(dist,conc,sp,pw):
	distance = dist
	concentrate = conc
	speed = sp
	power = pw
