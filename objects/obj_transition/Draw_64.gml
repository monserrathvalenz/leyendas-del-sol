// Set the color to black
draw_set_color(c_black);

// Draw a black rectangle to create the fade effect
draw_set_alpha(transition_alpha);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

// Reset alpha and color to avoid affecting other drawings
draw_set_alpha(1);
draw_set_color(c_white); // Reset to default color
