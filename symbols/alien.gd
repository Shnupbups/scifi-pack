extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "alien"
	self.value = 3
	self.values = []
	self.rarity = "rare"
	self.groups = ["organism", "scientistlikes", "alienthings"]

	self.texture = load_texture("res://scifi-pack/symbols/alien.png")
	
	self.name = "Alien"