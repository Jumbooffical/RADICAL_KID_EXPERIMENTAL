function get_rarity_from_swapping(_sprite) {

    if (_sprite == spr_empty_mag_slot) return undefined;

    for (var i = 0; i < array_length(global.allmags); i++) {
        if (global.allmags[i].sprite == _sprite) {
            return global.allmags[i];
        }
    }

    return undefined;
}
