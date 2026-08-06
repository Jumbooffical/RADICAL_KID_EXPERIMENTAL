draw_self()

if show_tooltip {
	if global.unlocked_hardmode {
		draw_set_colour(c_lime)
		draw_text_transformed(x, y - 100, "(E)", 3, 3, 0)
		draw_text_transformed(x, y - 50, "[[HARD MODE]] \n\nStart the run with cancer \nGetting 7 kill combo additionally delay cancer by 1s \nStart the run with tier 1 difficulty", 2, 2, 0)
		draw_set_colour(c_white)
	} else {
		draw_set_colour(c_orange)
		draw_text_transformed(x, y - 100, "???", 3, 3, 0)
		draw_text_transformed(x, y - 50, "[Beat the game on normal with 0 death to unlock]", 2, 2, 0)
		draw_set_colour(c_white)
	}
}