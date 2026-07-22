function player_controls() {
key_pause = vk_escape

if my_state == state.lost_balance exit;
key_up = ord("W")
key_down = ord("S")
key_left = ord("A")
key_right = ord("D")
key_rolling = vk_space

key_aim = mb_right
key_firing_mode = ord("C")
key_reloading = ord("R")

key_swapping = ord("Q")
key_nading = ord("G")
key_slot1 = ord("1")
key_slot2 = ord("2")
key_slot3 = ord("3")
key_slot4 = ord("4")
key_slot5 = ord("5")
key_slotnade = ord("G")

key_pickup = ord("F")
key_drop = ord("X")

key_inventory = vk_tab
key_gun_to_inv = ord("F")

pause_key(key_pause)
inventory_key(key_inventory)
next_slot(key_slot1, key_slot2, key_slot3, key_slot4, key_slot5, key_slotnade)

if !is_reloading && !cursed {
swap_melee(key_swapping)
swap_nade(key_nading)
}

if (!open_inventory) && (!is_rolling) { 
movement_key(key_up, key_down, key_left, key_right)
rolling_key(key_rolling)
pick_up_weapon(key_pickup)
drop_weapon(key_drop, selected_item)

if (holding_weapon()) {
	aiming_key(key_aim)
	shooting()
} else {
	shanking()
	throwing()
}
firing_mode_key(key_firing_mode)
reloading_key(key_reloading)
}
insert_weapon_into_inv(key_gun_to_inv)
}