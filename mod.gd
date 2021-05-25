extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    modloader.add_mod_symbol("res://scifi-pack/symbols/alien.gd")
    modloader.add_mod_symbol("res://scifi-pack/symbols/conspiracy_theorist.gd")
    modloader.add_mod_symbol("res://scifi-pack/symbols/flask.gd")
    modloader.add_mod_symbol("res://scifi-pack/symbols/man_in_black.gd")
    modloader.add_mod_symbol("res://scifi-pack/symbols/scientist.gd")
    modloader.add_mod_symbol("res://scifi-pack/symbols/ufo.gd")
	
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/cat.gd")
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/cow.gd")
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/dog.gd")
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/mouse.gd")
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/rabbit.gd")
    modloader.add_symbol_patch("res://scifi-pack/symbols/patches/toddler.gd")