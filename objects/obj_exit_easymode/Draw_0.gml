draw_self()

if show_tooltip {
	draw_set_colour(c_lime)
	draw_text_transformed(x, y - 100, "(E)", 3, 3, 0)
	draw_text_transformed(x, y - 50, "[Easy Mode: Heal to max on next level]", 2, 2, 0)
	draw_set_colour(c_white)
}