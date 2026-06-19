function pick_mags(_array, qty) {
    var clone_array = [];
    var display_array = [];
    var len = array_length(_array);
    array_copy(clone_array, 0, _array, 0, len);
    repeat(qty) {
		var _caliber = get_compatible_magazine();
		
		var caliber_filtered_array = magazine_filter_by_caliber(clone_array, _caliber)
		var universal_filtered_array = magazine_filter_by_caliber(clone_array, MAG_CALIBER.UNIVERSAL)
		var combined_array = array_concat(caliber_filtered_array, universal_filtered_array)
		
        var _quality = get_random_quality();
        var rarity_filtered_array = magazine_filter_by_quality(combined_array, _quality);
		
        if (array_length(rarity_filtered_array) > 0) {
            rarity_filtered_array = array_shuffle(rarity_filtered_array);
            array_push(display_array, rarity_filtered_array[0]);
            var index = array_get_index(clone_array, rarity_filtered_array[0]);
            array_delete(clone_array, index, 1);
        }
    }
    return display_array;
}

function get_compatible_magazine() {
	switch (obj_player.caliber_type) {
		case (Caliber.Medium):
			return MAG_CALIBER.AR
		break;
		
		case (Caliber.Light):
			return MAG_CALIBER.SMG
		break;
	}
}

function get_random_quality() {
	var rng = random_range(0, 100)
	
	if rng <= epic_chance {
    return RARITY.EPIC
	
	} else if rng <= rare_chance {
    return RARITY.RARE
	
	} else if rng <= uncommon_chance {
    return RARITY.UNCOMMON
	
	} else {
	return RARITY.COMMON	
	}
}

function magazine_filter_by_caliber(_array_of_mags, caliber) {
    return array_filter(_array_of_mags, method({ caliber }, function(mag) {
        return mag.caliber == caliber;
    }));
}

function magazine_filter_by_quality(_array_of_mags, rarity) {
    return array_filter(_array_of_mags, method({ rarity }, function(mag) {
        return mag.rarity == rarity;
    }));
}

function magazine(_sprite,_caliber,_rarity) constructor {
    sprite = _sprite;
	caliber = _caliber;
	rarity = _rarity;
}

