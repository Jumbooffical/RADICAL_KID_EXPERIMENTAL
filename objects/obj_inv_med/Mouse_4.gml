if amount > 0 {
	if obj_player.hp >= obj_player.maxhp
	{
	} else {
		obj_player.hp += 50%(obj_player.maxhp)		// Heal 50% max hp upon pickup
		amount -= 1
	}
}