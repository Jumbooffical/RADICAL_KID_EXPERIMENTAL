function apply_enemy_mutation(_mut) {
	if array_length(all_enemy_mutations) == 1 exit;
	var clone = []
	array_push(clone, _mut);

    array_push(applied_enemy_mutation, clone[0]);
    var index = array_get_index(all_enemy_mutations, clone[0]);
    array_delete(all_enemy_mutations, index, 1);
}