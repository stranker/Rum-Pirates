extends Control

onready var hearts = $HBC.get_children()

func on_hit(heart_idx : int):
	if heart_idx < 0: return
	hearts[heart_idx].on_hit()
	heart_idx -= 1
	pass
