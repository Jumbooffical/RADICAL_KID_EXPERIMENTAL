function CreateRoom(_x, _y, _width, _height, _no) constructor {
	width = _width
	height = _height
	x = _x
	y = _y
	rm_number = _no
	
	x2 = x + width
	y2 = y + height
	center_xoffset = 3 + irandom(width - 6)
	center_yoffset = 3 + irandom(height - 6)
	center_x = x + center_xoffset
	center_y = y + center_yoffset
	
	static Update = function() {
		x = round(clamp(x, 1, other.map_width - width -  1))
		y = round(clamp(y, 1, other.map_height - height -  1))
		x2 = round(x + width);
        y2 = round(y + height);
		center_x = x + center_xoffset;
        center_y = y + center_yoffset
	}
}