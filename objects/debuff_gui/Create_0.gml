sprite_index = spr_void
debuff_list = []

gun_bob_time = 0
current_spd = irandom_range(2, 4)
gun_bob_amount = current_spd * 2;     // how strong the wave is
gun_bob_speed = current_spd * 0.1;    // how fast it waves
smooth_arm_inertia = 0;

prev_item = 0
afterimg = false

tips = ""
tip_index = irandom(15)

switch (tip_index) {
	case 0:
		tips = "Headshot are useless in this game"
	break;
	
	case 1:
		tips = "Don't try to spam reload to get best possible magazine, choose the one that suitable to your situation!"
	break;
	
	case 2:
		tips = "You can drag and drop a magazine into a pocket slot, retaining it indefinitely. This is extremely useful to load the following mags in specific order, resulting in ridiculous synergy"
	break;
	
	case 3:
		tips = "Most enemies will not attack when they get too close to your grenade"
	break;
	
	case 4:
		tips = "Not all cursed magazine are bad!, with the right combination with pocket mag you can break the game"
	break;
	
	case 5:
		tips = "Enemies can still blindfire if you attack while inside the smoke grenade"
	break;
	
	case 6:
		tips = "You can completely avoid explosion damage by timing dodgeroll perfectly, failure will kill you!"
	break;
	
	case 7:
		tips = "Don't forget to use stims"
	break;
	
	case 8:
		tips = "Don't try to kill the titan, it's a waste of bullet. Instead, hurting them will make them more exhausted"
	break;
	
	case 9:
		tips = "Have a wide variety of guns and magazine to deal with all-kind of situation"
	break;
	
	case 10:
		tips = "Mutations are completely random and can only be obtained from mutagen, don't be afraid of defect as most of them aren't too painful"
	break;
	
	case 11:
		tips = "Getting 7+ kill combo will regenerate your health, be aggressive!!"
	break;
	
	case 12:
		tips = "Beware of enemies mutation! You will get 1 at random when the game start"
	break;
	
	case 13:
		tips = "Most enemies can be stun locked if you attacking them repeatedly with a melee"
	break;
	
	case 14:
		tips = "Switching to a different gun is always faster than reloading"
	break;
	
	case 15:
		tips = "Attachment can be loaded directly into the quickslot even if you don't have a gun!"
	break;
}