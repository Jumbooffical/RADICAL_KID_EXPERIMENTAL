function mag_tooltip() {
	
	if object_index != mech_mag exit;
		
	var tool_x = x + 60
	var tool_y = y + 120
	var tscale = 0.9
	draw_sprite(LMB, 0, tool_x, tool_y)
	draw_text_transformed(tool_x + 15, tool_y, ":Select Mag", tscale, tscale, 0)
	
	draw_sprite(RMB, 0, tool_x + 130, tool_y)
	draw_text_transformed(tool_x + 145, tool_y, ":(Hold) Drag into slot", tscale, tscale, 0)
}