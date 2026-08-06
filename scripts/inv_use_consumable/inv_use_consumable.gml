function inv_use_consumable() {
	
	
	var item = inv._inventory[selected_inv];
	
	var pos = pick_items(obj_player.all_mutations, 99, U_RARITY.COMMON)
	var pos2 = pick_items(obj_player.all_mutations, 99, U_RARITY.RARE)
	var all_pos = array_concat(pos, pos2)
	
	var neg = pick_items(obj_player.all_mutations, 99, U_RARITY.DEFECT)
	var neg2 = pick_items(obj_player.all_mutations, 99, U_RARITY.MAJOR_DEFECT)
	var all_neg = array_concat(neg, neg2)
	
	var array = 0
	var amount = 0
	
	with (obj_player) {
	switch (item.sprite) {
		case spr_medkit:
			heal_player(100)
		break;
		
		case spr_ifak:
			heal_player(300)
		break;
		
		case spr_supermedkit:
			obj_player.base.maxhp += 150
			heal_player(9999)
		break;
		
		case spr_antibiotic:
			if obj_player.cancer_phase == CANCER_PHASE.PHASE0 {
				error_feedback()
				return
			}
			obj_player.cancer_timer += duration(2,0)
		break;		
		
		case spr_stim_MEND:
			obj_player.MEND_stim_timer += duration(0,15)
		break;
		
		case spr_stim_ZERK:
			obj_player.hp -= 50
			obj_player.ZERK_stim_timer += duration(1,0)
		break;
		
		case spr_stim_NOON:
			obj_player.NOON_stim_timer += duration(1,0)
		break;
		
		case spr_stim_UNDY:
			obj_player.UNDY_stim_timer += duration(0,20)
		break;		
		
		case spr_stim_CLAR:
			obj_player.CLAR_stim_count += 5
		break;		
		
		case spr_stim_DRUM:
			obj_player.DRUM_stim_count += 3
		break;
		
		case spr_stim_HEX:
			obj_player.HEX_stim_count += 3
		break;
		
		case spr_stim_TAPE:
			if !holding_weapon() {
				error_feedback()
				return
			}
			obj_player.quickslot[obj_player.selected_item, QSlot.Buff_Taped] += 5
		break;
		
		case spr_stim_EPIK:
			obj_player.EPIK_stim_count += 3
		break;
		
		case spr_stable_mutagen:
			apply_mutation_ext(all_pos, 1)
			
			if rng < (array_length(obj_player.applied_mutation) * 1.5) {
				apply_mutation_ext(all_neg, 1)
			}
		break;
		
		case spr_unstable_mutagen:
			apply_mutation(obj_player.all_mutations[0])
		break;
		
		case spr_experimental_mutagen:
			apply_mutation_ext(neg2, 1)
			apply_mutation_ext(all_pos, 2)
		break;
		
		case spr_god_mutagen:
			apply_mutation_ext(pos2, 1)
		break;
		
		case spr_forbidden_mutagen:
			apply_mutation_ext(all_neg, 3)
		break;
		
		case spr_roulette_mutagen:
			obj_player.hp -= random_range(obj_player.maxhp * 0.2, obj_player.maxhp * 0.8)
		
			apply_mutation_ext(pos2, 1)
		break;
	}}
	inv.remove(selected_inv)
}