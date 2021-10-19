extends Node

var coins : int = 0
var life : int = 3

signal update_coins_ui(coins)
signal update_life_ui(life)

func on_coin_taken():
	coins += 1
	emit_signal("update_coins_ui", coins)
	pass

func on_player_hit():
	if life <= 0: return
	life -= 1
	emit_signal("update_life_ui", life)
	pass
