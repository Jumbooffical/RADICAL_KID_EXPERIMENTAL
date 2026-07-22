draw_self();
draw_sprite(spr_slider_button, 0, slider_x, y);
draw_text(x, y - 32, "volume: " + string(volume));
draw_text(x, y - 52, "volume: " + string(slider_state));