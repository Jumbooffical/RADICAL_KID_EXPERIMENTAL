button_width = sprite_get_width(spr_slider_button);
slider_width = bbox_right - bbox_left - button_width;
volume = 100;
slider_x = x + (volume / 100 * slider_width);
slider_button_clicked_x_position = 0;
mouse_x_prev = mouse_x;
slider_state = "idle";