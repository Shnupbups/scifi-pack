extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "flask"
	self.value = 1
	self.values = [1]
	self.rarity = "uncommon"
	self.groups = []

	self.texture = load_texture("res://scifi-pack/symbols/flask.png")
	
	self.name = "Flask"
	self.description = "Has a <color_E14A68><value_1>%<end> chance of transforming into <icon_chemical_seven> when adjacent to <icon_flask>."

func add_conditional_effects(symbol, adjacent):
	for i in adjacent:
		if i.type == "flask":
			symbol.add_effect(effect().if_value_random(0).animate("shake", "default", [symbol, i]).change_type("chemical_seven"))