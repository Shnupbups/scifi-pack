extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
	self.modloader = modloader

	self.id = "man_in_black"
	self.value = 2
	self.values = [10,2]
	self.rarity = "very_rare"
	self.groups = ["human", "organism"]

	self.texture = load_texture("res://scifi-pack/symbols/man_in_black.png")
	
	self.name = "Man in Black"
	self.description = "<color_E14A68>Destroys<end> adjacent <group_alienthings> and <last_alienthings>. Gives <icon_coin><color_FBF236><value_1><end> for each symbol <color_E14A68>destroyed<end>. Additionally, permanently gives <icon_coin><color_FBF236><value_2><end> for each <icon_ufo> <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
	for i in adjacent:
		symbol.add_effect_for_symbol(i,effect().if_group("alienthings").set_destroyed())
		symbol.add_effect_for_symbol(i,effect().if_destroyed().if_group("alienthings").set_target(symbol).change_value_bonus(values[0]).animate("bounce", "default", [symbol, i]))
		symbol.add_effect_for_symbol(i,effect().if_destroyed().if_type("ufo").set_target(symbol).add_permanent_bonus(values[1]).animate("bounce", "default", [symbol, i]))
		
func update_value_text(symbol, values):
	symbol.value_text = symbol.permanent_bonus
	symbol.value_text_color = "<color_FBF236>"