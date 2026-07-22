function apply_mutation_rework() {
	
	
#region MUTATIONS
var _mut = obj_player.applied_mutation
for (var i = 0; i < array_length(_mut); i++) {
    switch (_mut[i].name) {
        case "Fast Footed":
            my_spd = my_spd + 1;
        break;

        case "Tough":
            maxhp = base.maxhp + 200;
        break;

        case "Modified Vein":
            global.max_combo_cd = global.max_combo_cd + 60;
        break;

        case "Trained Lung":
            base.roll_cd = base.roll_cd / 1.5;
        break;

        case "BloodThirsty":
            my_spd = my_spd - 1.5;
            global.combo1_milestone = global.combo1_milestone - 1;
        break;
		
		case "Quickhand":
            base.reload_mult = base.reload_mult + 0.25;
        break;
		
		case "Lucky":
			uncommon_chance = uncommon_chance * 1.1;
			rare_chance = rare_chance * 1.1;
			epic_chance = epic_chance * 1.1;
		break;
    }
#endregion

#region DEFECT
	switch (_mut[i].name) {
		case "Fragile":
            maxhp = base.maxhp - 250;
        break;
		
		case "Warm Blooded":
            heat_mult = heat_mult + 1.25;
        break;
		
		case "Extra Finger":
        break;
		
		case "Noodle Arms":
			base.recoil_penalty = base.recoil_penalty + 0.2;
			base.deviation = base.deviation + 0.2;
        break;
		
		case "Clumsy":
			base.reload_mult = base.reload_mult - 0.2;
			curse_chance = curse_chance * 1.5;
		break;
		
		case "Lightweight":
			maxhp = base.maxhp - 350;
			my_spd = my_spd + 1;
		break;
		
		case "Short Sighted":
            obj_camera.zoom = obj_camera.zoom / 1.1;
        break;
		
		case "Cancer!":
			cancer_timer--
		break;

        case "Low blood pressure":
            global.max_combo_cd = global.max_combo_cd - 90;
        break;
		
		case "Conspicuous":
			base.react_mult = base.react_mult - 0.5;
		break;
	}
#endregion
	}
}