// Inherit the parent event
event_inherited();

amount = 1

switch (sprite_index) {
	case ammoShell:
		amount = irandom_range(9, 18)
	break;
}

loot_alarm = 60
magnet = false