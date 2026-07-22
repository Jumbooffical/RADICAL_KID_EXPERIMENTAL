function consumable_description() {
	switch(sprite_index) {
case spr_medkit:
name = "MedKit"
description = "Heal 100 HP"
break;

case spr_ifak:
name = "IFAK"
description = "Heal 300 HP"
break;

case spr_supermedkit:
name = "Super Medkit"
description = "Heal all of your HP, +150 Max HP"
break;

case spr_stable_mutagen:
name = "Stable Mutagen"
description = "Obtain random mutation, may additionally gain defect based on how many mutation you have"
break;

case spr_unstable_mutagen:
name = "Untable Mutagen"
description = "Obtain random mutation, or defect"
break;

case spr_experimental_mutagen:
name = "Experimental Mutagen"
description = "Obtain a random pack of mutations & defect, highly experimental"
break;

case spr_god_mutagen:
name = "God Mutagen"
description = "Obtain 2 powerful mutations"
break;

case spr_forbidden_mutagen:
name = "Forbidden Mutagen"
description = "Obtain 3 defects"
break;

case spr_roulette_mutagen:
name = "Roulette Mutagen"
description = "Take random damage between 20% to 80% of your max hp (may kill you if you unlucky), Obtain 1 powerful mutation."
break;

case spr_antibiotic:
name = "Antibiotic"
description = "Suppress infection & cancer"
break;

case spr_stim_MEND:
name = "'MEND' Medical Stimulant"
description = "Set healing gain to x2 for 15s"
break;

case spr_stim_ZERK:
name = "'ZERK' Combat Stimulant"
description = "Take 50 damage. The pain will make you act extremely fast for 1 minute"
break;

case spr_stim_NOON:
name = "'NOON' Combat Stimulant"
description = "Maximize aiming effectiveness for 1 minute"
break;

case spr_stim_CLAR:
name = "'CLAR' Brain Enhancer Stimulant"
description = "Next 5 reloads have 2 additional magazine options to choose from"
break;

case spr_stim_EPIK:
name = "'EPIK' Tinkerer's Stimulant"
description = "Next 3 reloads only offer rare or epic magazine"
break;

case spr_stim_HEX:
name = "'HEX' Curse Infusion Stimulant"
description = "Next 3 reloads will always be cursed"
break;

case spr_stim_DRUM:
name = "'DRUM' Magazine Oil"
description = "Double magazine size for next 2 reloads"
break;

case spr_stim_TAPE:
name = "'TAPE' Magazine Oil"
description = "Your current gun have 5 emergency reloads (double press reload to reload 3 times faster)"
break;

case spr_stim_UNDY:
name = "'UNDY' Ancient Stimulant"
description = "Cannot die while HP is at 0 for 30 seconds, applied automatically at 0 HP. \n\nDon't forget to healup afterward!"
break;
	}
}