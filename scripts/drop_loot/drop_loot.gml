function drop_loot(_lootpool, _amount) {
	for (var i = 0; i < _amount; i++) {
		var obj = _lootpool[irandom(array_length(_lootpool) - 1)];
		instance_create_depth(x, y, depth, obj);
	}
}