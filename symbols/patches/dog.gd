extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "dog"

func patch_groups(groups):
    groups.push_back("ufolikes")
    return groups