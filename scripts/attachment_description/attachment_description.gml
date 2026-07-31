function attachment_description(){
	switch(sprite_index) {
case spr_acog:
index = 1
name = "ACOG x4 scope"
description = "x4 magnification, -25% aim speed"
break;
case spr_lrs:
index = 1
name = "PM-II x6 scope"
description = "x6 magnification, -50% aim speed \n[Snipe]"
break;
case spr_rds:
index = 1
name = "RED DOT SIGHT"
description = "Green dot, +50% Aim Speed"
break;


case spr_chainsaw_grip:
index = 2
name = "CHAINSAW GRIP"
description = "-90% Deviation, Cannot aim"
break;
case spr_grip_w_flashlight:
index = 2
name = "GRIP W/ FLASHLIGHT"
description = "-20% Recoil, Enemy have slower reaction time"
break;
case spr_vertical_grip:
index = 2
name = "VERTICAL GRIP"
description = "-30% Recoil"
break;
case spr_skeletal_grip:
index = 2
name = "SKELETAL GRIP"
description = "-20% Recoil, +25% Aim Speed"
break;


case spr_blue_laser:
index = 3
name = "TACTICAL BLUE LASER"
description = "-20% Deviation"
break;
case spr_nade_launcher:
index = 3
name = "40MM NADE LAUNCHER"
description = "Middle mouse click to launch impact grenade, 60 seconds cooldown. Kill reduce cooldown by 5"
break;
case spr_shuriken_printer:
index = 3
name = "SHURIKEN PRINTER"
description = "Chance to produce a shuriken for each step you take (scale with speed). \n\nSpray it all when dodge rolling, each dealing 8 damage"
break;
case spr_knife_mount:
index = 3
name = "BAYONET MOUNT"
description = "Middle mouse click to thrust, it have extra range compare to unmounted knife"
break;


case spr_burst_amplifier:
index = 4
name = "3-BURST AMPLIFIER"
description = "Convert to full auto, manually fire EXACTLY 3 shot burst then release the trigger grant +50% damage and accuracy.\n\nFailing will grant -20% damage instead until next reload"
break;	
case spr_kunai_launcher:
index = 4
name = "KUNAI UNDERBARREL LAUNCHER"
description = "Chance to produce a kunai each shot (scale with firerate). \n\nSpray it all when reloading, each dealing 7 damage"
break;
case spr_suppressor:
index = 4
name = "SUPPRESSOR"
description = "Reduce noise, bullet harder to detect, +50% Heat"
break;
	}
} 