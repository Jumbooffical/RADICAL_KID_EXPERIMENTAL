function pick_items(_array, qty, _rarity) {
    var clone_array = [];
    var display_array = [];
    var len = array_length(_array);
    array_copy(clone_array, 0, _array, 0, len);
    repeat(qty) {	
        var rarity_filtered_array = filter_by_rarity(clone_array, _rarity);
		
        if (array_length(rarity_filtered_array) > 0) {
            rarity_filtered_array = array_shuffle(rarity_filtered_array);
            array_push(display_array, rarity_filtered_array[0]);
            var index = array_get_index(clone_array, rarity_filtered_array[0]);
            array_delete(clone_array, index, 1);
        }
    }
    return display_array;
}

function filter_by_rarity(_array_of_mags, rarity) {
    return array_filter(_array_of_mags, method({ rarity }, function(mag) {
        return mag.rarity == rarity;
    }));
}

function item(_object,_rarity) constructor {
    object = _object;
	rarity = _rarity;
}