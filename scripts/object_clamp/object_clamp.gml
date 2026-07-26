function object_clamp(_obj) {
	if (instance_number(_obj) > 1) {
		var first = instance_find(_obj, 0);
		if (id != first) { instance_destroy(); }
	}
}