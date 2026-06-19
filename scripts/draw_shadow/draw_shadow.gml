function draw_shadow(_sprite, _GrayIntesity, _Xoffset, _Yoffset, _Alloffset, _Xscale, _Yscale, _angle, _alpha) {
	if outside_cam exit;	
	
	var shadow_offset = _Alloffset;
	var gray_intensity = _GrayIntesity
	var shadow_color = make_colour_rgb(gray_intensity, gray_intensity, gray_intensity)

	draw_sprite_ext(
	    _sprite,
	    image_index,
	    x + shadow_offset + _Xoffset,
	    y + shadow_offset + _Yoffset,
	    _Xscale,
	    _Yscale,
	    _angle,
	    shadow_color,
	    _alpha
	);
}