extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "scientist"
	self.value = 3
	self.values = [10, 10]
	self.rarity = "rare"
	self.groups = ["human", "organism", "ufolikes", "spawner0"]

	self.texture = load_texture("res://scifi-pack/symbols/scientist.png")
	
	self.name = "Scientist"
	self.description = "Has a <color_E14A68><value_1>%<end> chance to add <icon_flask>. <color_E14A68>Removes<end> adjacent <group_scientistlikes> and <last_scientistlikes>. Gives <icon_coin><color_FBF236><value_2><end> for each symbol <color_E14A68>removed<end>."

func add_conditional_effects(symbol, adjacent):
	symbol.add_effect(effect().if_value_random(0).animate("shake").add_symbol_type("flask"))
	for i in adjacent:
		symbol.add_effect_for_symbol(i,effect().if_group("scientistlikes").set_target(symbol).change_value_bonus(values[1]).animate("bounce", "default", [symbol, i]))
		symbol.add_effect_for_symbol(i,effect().if_group("scientistlikes").set_removed())