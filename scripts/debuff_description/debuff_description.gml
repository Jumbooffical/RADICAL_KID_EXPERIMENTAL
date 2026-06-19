function debuff_description() {
	var mi = obj_player;
	
	if (mi.immobilize_timer > 0) {
	array_push(debuff_list, {
		sprite: immobilize_icon,
		name: "IMMOBILIZED",
		desc: "-80% movement speed, cannot use mobility ability",
		note: "Watch your step!",
		duration: string(mi.immobilize_timer / 60) + "s"
		});
	}
	
	if (mi.cursed) && (!mi.is_reloading) && (mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag]) < 1 {
	array_push(debuff_list, {
		sprite: cursed_icon,
		name: "CURSED",
		desc: "You are powerless to release the gun while the cursed magazine is not empty",
		note: "Curse are result in weapon overheat, defect and bad luck!",
		duration: ""
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag]) > 0 {
	array_push(debuff_list, {
		sprite: airmag_icon,
		name: "AIR BULLET CURSE",
		desc: "All bullet you fired turned into air, dealing no damage. Set magsize to 999",
		note: "Obtained from cursed magazine",
		duration: string((mi.quickslot[mi.selected_item, QSlot.Debuff_AirMag]))
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_stasis_mag {
	array_push(debuff_list, {
		sprite: stasis_icon,
		name: "STATIS CURSE",
		desc: "While this curse is active. All bullet you fired are remain motionless and harmless",
		note: "Obtained from cursed magazine",
		duration: "1"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_glass_bullet {
	array_push(debuff_list, {
		sprite: glass_bullet_icon,
		name: "GLASS BULLET",
		desc: "Bullet deal triple damage. Set magsize to 1",
		note: "Obtained from cursed magazine",
		duration: "1"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_trackless_mag {
	array_push(debuff_list, {
		sprite: trackless_icon,
		name: "TRACKLESS SEEKING BULLET",
		desc: "Bullet home to random enemy",
		note: "Obtained from cursed magazine",
		duration: "1"
		});
	}
	
	if (mi.quickslot[mi.selected_item, QSlot.Mag]) == spr_blackjack_mag {
	array_push(debuff_list, {
		sprite: blackjack_icon,
		name: "BLACKJACK MAGAZINE",
		desc: "Start spraying then release the trigger at EXACTLY 21st shot will lift the curse, failure will cost your blood!",
		note: "Reload to try again when failed!",
		duration: obj_player.burst_fired
		});
	}

	if instance_exists(obj_enemy_titan) {
		if (obj_enemy_titan.overclocked) {
			array_push(debuff_list, {
				sprite: overclock_icon,
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
	}
}