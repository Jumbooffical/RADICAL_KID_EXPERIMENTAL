// Health bar
draw_sprite_stretched(health_bar_bg, 0, hpbar_x, hpbar_y, hpbar_w, hpbar_h);
draw_sprite_stretched(health_bar, 0, hpbar_x, hpbar_y, (hp/maxhp) * hpbar_w, hpbar_h);

// Inventory
draw_sprite(spr_inventory, 0, 0, 0);


var slot_size = sprite_get_width(spr_selection);
// Draw the selection box around the selected item
draw_sprite(spr_selection, 0, 0 + selected_item * slot_size, 0);

// Draw weapons inside inventory
for (var i = 0; i <= inventory_size; i ++) {
	if (inventory[i, 0] != noone) {
		draw_sprite(
		weapon[inventory[i, 0], 2], 
		0, 
		(slot_size/2) + i * slot_size, 
		slot_size/2
		);
	}
}