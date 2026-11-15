// Set alignment and font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// draw_set_font(fnt_menu); // Create and uncomment a Font asset if you have one

// Determine the center of the GUI layer
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

var _start_x = _gui_width / 2;
var _start_y = _gui_height / 2;
var _line_spacing = 50; // Pixels between entries

// Loop through and draw each option
for (var i = 0; i < menu_length; i++) {
    // If the item is currently selected, highlight it
    if (i == menu_index) {
        draw_set_color(c_yellow); // Highlight color
        draw_text(_start_x, _start_y + (i * _line_spacing), "> " + menu_options[i] + " <");
    } else {
        draw_set_color(c_white); // Default color
        draw_text(_start_x, _start_y + (i * _line_spacing), menu_options[i]);
    }
}

// Reset drawing settings back to default for clean rendering elsewhere
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
