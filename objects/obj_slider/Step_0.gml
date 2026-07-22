// If the user clicks on the slider's button
if mouse_check_button_pressed(mb_left)
&& point_in_rectangle(mouse_x, mouse_y, slider_x, bbox_top, slider_x + button_width, bbox_bottom)
{
    slider_state = "active";
    slider_button_clicked_x_position = mouse_x - slider_x;
}

// If the user releases the left mouse button
if mouse_check_button_released(mb_left)
{
    slider_state = "idle";
}

switch (slider_state)
{
    // If the user clicks on the slider's horizontal bar
    case "idle":
        if mouse_check_button_pressed(mb_left)
        {
            // ... jump to that position on the slider bar
            slider_x = clamp(mouse_x - (button_width / 2), x, x + slider_width);
            volume = ((slider_x - x) / slider_width * 100) div 5 * 5;
            
            // ... then change state to actively scrolling
            slider_state = "active";
            slider_button_clicked_x_position = mouse_x - slider_x;
        }
        break;
    
    // If the user has clicked on the slider button
    case "active":
        // If the user drags the mouse to the right ...
        if (mouse_x - mouse_x_prev) > 0
        {
            // ... past the point where the user first clicked on the slider button
            if mouse_x >= x + slider_button_clicked_x_position
            {
                slider_x = clamp(slider_x + (mouse_x - mouse_x_prev), x, x + slider_width);
                volume = ((slider_x - x) / slider_width * 100) div 5 * 5;
            }
        }
        // If the user drags the mouse to the left
        else
        {
            // ... past the point where the user first clicked on the slider button
            if mouse_x <= x + slider_width + slider_button_clicked_x_position
            {
                slider_x = clamp(slider_x + (mouse_x - mouse_x_prev), x, x + slider_width);
                volume = ((slider_x - x) / slider_width * 100) div 5 * 5;
            }
        }
        break;
}