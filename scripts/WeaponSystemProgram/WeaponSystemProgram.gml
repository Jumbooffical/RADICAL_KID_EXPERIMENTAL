// These list of array allowing player to swap to different gun with different appropriate stats in par_gun and ranged enemies. Weapon stats can be changed
function WeaponSystemProgram(){	
	weapon[0, 1] = "SCAR"    //gun name
	weapon[0, 2] = BELG_SCAR //gun sprite
	weapon[0, 3] = 0         //type of ammo
	weapon[0, 4] = 1		 //visual recoil(aka gun shake) when shooting
	weapon[0, 5] = 3		 //recoil (amount of screen shake)
	weapon[0, 6] = snd_shoot //sound effect
	weapon[0, 7] = 1         //amount of bullets per shot
	weapon[0, 8] = 5         //firerate
	weapon[0, 9] = true      //check full auto
	weapon[0, 10] = 1        //bullet per burst
	weapon[0, 11] = 4        //Rate of fire in a burst, higher mean slower
	weapon[0, 12] = 5		 //Accuracy, higher mean less accurate and more spread
	weapon[0, 13] = obj_scar //weapon object
	weapon[0, 14] = obj_item_scar	//drop weapon item
	
	weapon[0, 15] = 10;		//change time in frame
	
	ammo[0, 0] = obj_enemybullet_SCAR;	//Enemy Ammo
	ammo[0, 1] = obj_bullet_SCAR;		//Player Ammo
	ammo[0, 2] = 20;		//damage
	ammo[0, 3] = 30;		//velocity
	ammo[0, 4] = 20;		//Firerate at the start
	ammo[0, 5] = 20;		//Firerate at the end
	ammo[0, 6] =  0;		//Firerate Multiply
	ammo[0, 7] =  10;		//Firerate 
	ammo[0, 8] = 2000;		//Ammo Reserve
	
	weapon[1, 1] = "UZI"     //gun name
	weapon[1, 2] = ISR_UZI	 //gun sprite
	weapon[1, 3] = 0         //type of ammo
	weapon[1, 4] = 1		 //visual recoil(aka gun shake) when shooting
	weapon[1, 5] = 3		 //recoil (amount of screen shake)
	weapon[1, 6] = snd_shoot //sound effect
	weapon[1, 7] = 1         //amount of bullets per shot
	weapon[1, 8] = 2         //firerate
	weapon[1, 9] = true      //check full auto
	weapon[1, 10] = 1        //bullet per burst
	weapon[1, 11] = 4        //Rate of fire in a burst, higher mean slower
	weapon[1, 12] = 15		 //accuracy, higher mean less accurate and more spread
	weapon[1, 13] = obj_uzi  //weapon object
	weapon[1, 14] = obj_item_uzi	//drop weapon item
	
	ammo[1, 0] = obj_enemybullet_UZI	//Enemies Ammo
	ammo[1, 1] = obj_bullet_UZI;		//Player Ammo
	ammo[1, 2] = 10;		//damage
	ammo[1, 3] = 15;		//velocity
	ammo[1, 4] = 20;		//Firerate at the start
	ammo[1, 5] = 20;		//Firerate at the end
	ammo[1, 6] =  0;		//Firerate Multiply
	ammo[1, 7] =  10;		//Firerate
	ammo[1, 8] = 2000;		//Ammo Reserve
}