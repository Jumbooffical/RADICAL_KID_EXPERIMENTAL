var context_x = obj_player.x + 100
var context_y = obj_player.y - 200
var w = 120;
var h = 60;

radius = 200
//draw_circle(x, y, radius, true)

if distance_to_object(obj_player) < radius {
	draw_set_alpha(random_range(0.8, 1))
	draw_set_colour(c_grey);
	draw_rectangle(context_x, context_y + 5, context_x + w * 6, context_y + h * 6, false);

	draw_set_colour(c_black);
	draw_rectangle(context_x, context_y, context_x + w * 6, context_y + 65, false);
	draw_set_alpha(1)

	draw_set_colour(c_white);
	draw_text_transformed(context_x + 20, context_y + 8, name, 2, 2, 0);
	draw_text_ext_transformed(context_x + 20, context_y + 75, desc,
	-1, w * 4, 1.5, 1.5, 0)
}

switch (phase) {
	case TUT.WELCOME:
		name = "WELCOME YOUNG SOLDIER"
		desc = "Before you are send into a meatgrinder, you are required to complete this mandatory course as thousands of soldier have been previously killed because they don't know how to reload"
	break;
	
	case TUT.SHOOTING:
		name = "CHOOSING MAG"
		desc = "Pick up the gun, reload and select 1 of 3 magazine then mag dump on the box. \n\nYou can also right click to drag a magazine into a pocket slot to retain it"
	break;
	
	case TUT.EXPLAIN_RELOAD:
		name = "RANDOMIZED MAGAZINE"
		desc = "Magazine are hard to come by, don't waste a single bullet! Choose the best one that suit to your current situation"
	break;
	
	case TUT.EXPLAIN_DEVIATION:
		name = "DEVIATION"
		desc = "Most gun accumulate heat when fired, too much heat will massively increase deviation, which is inaccuracy caused by weapon heat."
	break;
	
	case TUT.AIMING:
		name = "AIMING"
		desc = "Aiming completely bypass deviation and spawn a red dot when fired, not only it for visual but also allow headshot when it touch the head \n\nEquip the scope from the inventory by pressing [TAB], aim and score 3 headshot to proceed"
	break;
	
	case TUT.EXPLAIN_RECOIL:
		name = "RECOIL"
		desc = "DEVIATION only affect hipfire accuracy. \n\nRECOIL only affect reticle from aiming, the further you aim, the more 'kick' of the reticle when fired."
	break;
	
	case TUT.DODGE:
		name = "DODGEROLL"
		desc = "[SPACE] to dodgeroll, evading bullet \n\nTry it a few time, as healing are very limited, you'll have to avoid getting hurt at all time"
	break;
	
	case TUT.COMBO:
		name = "COMBO"
		desc = "Each kill accumulated combo-ing indicated by orange bar above your health \n\nAt x3 combo each kill make you faster, \nAt x7 you will heal 33% of the enemy's max hp \n\nPick up this gun, it has infinite ammo. Try to get as much combo as possible"
	break;
	
	case TUT.CONCLUSION:
		name = "THE END"
		desc = "That's conclude the tutorial, I hope you learned thing 'properly' for whole time, otherwise you wouldn't last more than 1 minutes in the meatgrinder. Good luck out there!"
	break;
}
obj_player.uncommon_chance = 0
obj_player.rare_chance = 0
obj_player.epic_chance = 0
obj_player.curse_chance = 0