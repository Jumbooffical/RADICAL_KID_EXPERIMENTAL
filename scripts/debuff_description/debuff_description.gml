function debuff_description() {
	var mi = obj_player;
	
	if (mi.death) {
	array_push(debuff_list, {
		sprite: DEATH_icon,
		name: "You Died!",
		desc: "Tips: " + string(tips),
		note: "Ready to meet gods again?",
		duration: "!!!!!!"
		});
	}
	
	if (mi.immobilize_timer > 0) {
	array_push(debuff_list, {
		sprite: immobilize_icon,
		name: "IMMOBILIZED",
		desc: "-80% movement speed, cannot use mobility ability",
		note: "Watch your step!",
		duration: display_duration(mi.immobilize_timer)
		});
	}
	
	if (mi.cursed) && (!mi.is_reloading) && (mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag]) < 1 {
	array_push(debuff_list, {
		sprite: cursed_icon,
		name: "CURSED",
		desc: "You are powerless to release the gun while the cursed magazine is not empty",
		note: "Curse are result in weapon overheat, defect and bad luck!",
		duration: "cursed"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag]) > 0 {
	array_push(debuff_list, {
		sprite: airmag_icon,
		name: "AIR BULLET CURSE",
		desc: "All bullet you fired turned into air, dealing no damage. Set magsize to 999",
		note: "Obtained from cursed magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag])) + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_stasis_mag {
	array_push(debuff_list, {
		sprite: stasis_icon,
		name: "STATIS CURSE",
		desc: "While this curse is active. All bullet you fired are remain motionless and harmless",
		note: "Obtained from cursed magazine",
		duration: "1" + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_glass_bullet {
	array_push(debuff_list, {
		sprite: glass_bullet_icon,
		name: "GLASS BULLET",
		desc: "Bullet deal triple damage. Set magsize to 1",
		note: "Obtained from cursed magazine",
		duration: "1" + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_trackless_mag {
	array_push(debuff_list, {
		sprite: trackless_icon,
		name: "TRACKLESS SEEKING BULLET",
		desc: "Bullet home to random enemy",
		note: "Obtained from cursed magazine",
		duration: "1" + " rload"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_blackjack_mag {
	array_push(debuff_list, {
		sprite: blackjack_icon,
		name: "BLACKJACK MAGAZINE",
		desc: "Start spraying then release the trigger at EXACTLY 21st shot will lift the curse, failure will cost your blood!",
		note: "Obtained from cursed magazine",
		duration: obj_player.burst_fired
		});
	}
	
	if (mi.cancer_phase == CANCER_PHASE.PHASE1) {
	array_push(debuff_list, {
		sprite: cancer1_icon,
		name: "PHASE 1 CANCER",
		desc: "You feel weak!, -10% healing gain",
		note: "Your suffering begin...",
		duration: display_duration(mi.cancer_timer)
		});
	}
	
	if (mi.cancer_phase == CANCER_PHASE.PHASE2) {
	array_push(debuff_list, {
		sprite: cancer2_icon,
		name: "PHASE 2 CANCER",
		desc: "You feel very weak!, -60% healing gain",
		note: "Your suffering worsen...",
		duration: display_duration(mi.cancer_timer)
		});
	}
	
	if (mi.cancer_phase == CANCER_PHASE.PHASE3) {
	array_push(debuff_list, {
		sprite: cancer3_icon,
		name: "PHASE 3 CANCER",
		desc: "You feel too weak!, -90% healing gain",
		note: "Your suffering's end is imminent!",
		duration: display_duration(mi.cancer_timer)
		});
	}
	
	if (mi.cancer_phase == CANCER_PHASE.PHASE4) {
	array_push(debuff_list, {
		sprite: cancer4_icon,
		name: "",
		desc: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
		note: "...",
		duration: "!!!!!!"
		});
	}
	
	if (obj_player.debuff_wallhacked) {
	array_push(debuff_list, {
		sprite: recon_icon,
		name: "WALLHACKED!",
		desc: "Everybody know your location, all enemies have 0 reaction time!",
		note: "Somebody must've did this, kill them",
		duration: "alive"
		});
	}
	
	if (mi.HEX_stim_count) > 0 {
	array_push(debuff_list, {
		sprite: HEX_icon,
		name: "HEX",
		desc: "Next " + string(mi.HEX_stim_count) + " reload always be cursed",
		note: "Obtained from HEX stim",
		duration: string(mi.HEX_stim_count) + " rload"
		});
	}

	if instance_exists(obj_enemy_titan) {
		if (obj_enemy_titan.overclocked) {
			array_push(debuff_list, {
				sprite: titanoverclock_icon,
				name: "OVERCLOCKED TITAN",
				desc: "The titan now have unholy firepower while the lieutenant is alive",
				note: "Don't let the titan shoot you!",
				duration: "alive"
			});
		}
		
		if (obj_enemy_titan.magnet_imbued) {
			array_push(debuff_list, {
				sprite: magnetism_icon,
				name: "MAGNETIZED TITAN",
				desc: "The titan now emit a magnetize field that suck you closer while the magnetizer is alive",
				note: "Don't get too close!",
				duration: "alive"
			});
		}
		
		if (obj_enemy_titan.can_teleport) {
			array_push(debuff_list, {
				sprite: titan_tele_icon,
				name: "TELEPORTED TITAN",
				desc: "The titan now teleport on your location while the teleporter is alive",
				note: "Keep running!",
				duration: "alive"
			});
		}
		
		if (obj_enemy_titan.speed_buff) {
			array_push(debuff_list, {
				sprite: titan_speed_icon,
				name: "WEIGHTLESS TITAN",
				desc: "The titan's armor are weightless while the speedster is alive",
				note: "Keep running!",
				duration: "alive"
			});
		}
	}
}