function apply_enemy_mutation_rework() {
	
	#region BASE ENEMY STAT
	global.damage_mult[WeaponType.AR] = 1
	global.damage_mult[WeaponType.SMG] = 1
	global.damage_mult[WeaponType.Pistol] = 1
	global.damage_mult[WeaponType.Bolt] = 1
	global.damage_mult[WeaponType.DMR] = 1
	global.damage_mult[WeaponType.Shotgun] = 1	
	global.damage_mult[WeaponType.LMG] = 1
	#endregion

var _mut = obj_player.applied_enemy_mutation
for (var i = 0; i < array_length(_mut); i++) {
    switch (_mut[i].name) {
		case "Deadly SMG":
			global.damage_mult[WeaponType.SMG] = global.damage_mult[WeaponType.SMG] + 0.5
		break;
		
		case "Deadly AR":
			global.damage_mult[WeaponType.AR] = global.damage_mult[WeaponType.AR] + 0.33
		break;
		
		case "Deadly Pistol":
			global.damage_mult[WeaponType.Pistol] = global.damage_mult[WeaponType.Pistol] + 1
		break;
		
		case "Deadly Sniper":
			global.damage_mult[WeaponType.Bolt] = global.damage_mult[WeaponType.Bolt] + 0.33
			global.damage_mult[WeaponType.DMR] = global.damage_mult[WeaponType.Bolt] + 0.33
		break;
		
		case "Deadly Shotgun":
			global.damage_mult[WeaponType.Shotgun] = global.damage_mult[WeaponType.Bolt] + 0.33
		break;		
    }
}}