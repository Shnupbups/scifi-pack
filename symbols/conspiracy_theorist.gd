extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "conspiracy_theorist"
	self.value = 2
	self.values = [2]
	self.rarity = "rare"
	self.groups = ["human", "organism"]

	self.texture = load_texture("res://scifi-pack/symbols/conspiracy_theorist.png")
	
	self.name = "Conspiracy Theorist"
	self.description = "Adjacent <group_alienthings> and <last_alienthings> give <color_E14A68><value_1>x<end> more <icon_coin>."

func add_conditional_effects(symbol, adjacent):
	for i in adjacent:
		symbol.add_effect_for_symbol(i,effect().if_group("alienthings").change_value_multiplier(values[0]).animate("bounce", "default", [symbol, i]))