draw_self()

var xoffset = 50
var yoffset = 12
var scale = 1.2

draw_set_colour(color)
draw_text_transformed(x + xoffset, y + yoffset, text, scale, scale, 0)
draw_set_colour(c_white)