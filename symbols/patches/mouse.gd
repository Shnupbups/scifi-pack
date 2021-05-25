extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "mouse"

func patch_groups(groups):
    groups.push_back("scientistlikes")
    return groups