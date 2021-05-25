extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "ufo"
	self.value = 2
	self.values = [5,1]
	self.rarity = "very_rare"
	self.groups = ["alienthings"]

	self.texture = load_texture("res://scifi-pack/symbols/ufo.png")
	
	self.name = "UFO"
	self.description = "Has a <color_E14A68><value_1>%<end> chance to add <icon_alien>. <color_E14A68>Removes<end> adjacent <group_ufolikes> and <last_ufolikes>. Permanently gives <icon_coin><color_FBF236><value_2><end> for each symbol <color_E14A68>removed<end>. Adds 3 <icon_alien> when <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
	symbol.add_effect(effect().if_value_random(0).add_symbol_type("alien").animate("shake"))
	symbol.add_effect(effect().if_destroyed().add_symbol_type("alien").add_symbol_type("alien").add_symbol_type("alien"))
	for i in adjacent:
		symbol.add_effect_for_symbol(i,effect().if_group("ufolikes").set_target(symbol).add_permanent_bonus(values[1]).animate("bounce", "default", [symbol, i]))
		symbol.add_effect_for_symbol(i,effect().if_group("ufolikes").set_removed())
		
func update_value_text(symbol, values):
    symbol.value_text = symbol.permanent_bonus
    symbol.value_text_color = "<color_FBF236>"