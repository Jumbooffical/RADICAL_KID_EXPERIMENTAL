function apply_mutation(_mut) {
	
	
	if array_length(obj_player.all_mutations) == 1 exit;
	var clone = []
	
	array_push(clone, _mut);

    array_push(obj_player.applied_mutation, clone[0]);
    var index = array_get_index(obj_player.all_mutations, clone[0]);
    array_delete(obj_player.all_mutations, index, 1);
}

function apply_mutation_ext(_array, _amount) {
	for (var i = 0; i < _amount; i++) {
		if (i >= array_length(_array))
			break;

		apply_mutation(_array[i]);
	}
}