draw_self();

draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);

draw_text(x + 50,y + 30, dot_received)