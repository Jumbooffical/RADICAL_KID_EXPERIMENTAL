depth = 0
WeaponData()
wID = par_gun.weaponIndex
damage = obj_player.stat.damage_output
stun = 0
velocity = weapon[wID, GUN.VELOCITY]

max_range = infinity

weaponLength = sprite_get_bbox_right(weapon[wID, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[wID, GUN.PLAYER_SPRITE])
visible = false

path = path_add()
path_index_current = path;

text_float = 0
my_state = bullet_state.NORMAL

soulbinded = false
corrosive = false
armor_piercing = 0

enum bullet_state {
NORMAL,
SMART,
HEATSEEK,
STASIS,
DESTROYED,
SOULBINDED,
TRACKLESS
}

var mi = obj_player
if mi.quickslot[mi.selected_item, QSlot.Mag] == spr_trackless_mag {
	if (instance_number(obj_ranged_enemy) > 0) {
	target = instance_find(obj_ranged_enemy, irandom(instance_number(obj_ranged_enemy) - 1));
	} else {
	target = noone;
	}
}

shotgun = false