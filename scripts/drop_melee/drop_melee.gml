function drop_melee() {
    // Drop melee if slot 2 is occupied
    if (quickslot[2, QSlot.Melee] != noone) {
        instance_create_depth(x, y, 0, melee[meleeIndex, 3]);

        // Reset melee slot
        quickslot[2, QSlot.Melee] = noone;
		meleeIndex = 0
    }
}