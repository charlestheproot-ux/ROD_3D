// Get input
var _up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

// Move through the menu
if (_up) {
    menu_index--;
    if (menu_index < 0) menu_index = menu_length - 1; // Loop to bottom
}
if (_down) {
    menu_index++;
    if (menu_index >= menu_length) menu_index = 0; // Loop to top
}

// Execute actions upon selection
if (_select) {
    switch(menu_index) {
        case 0: // Play Game
            room_goto(rm_game); // Replace with your actual 3D game room asset name
            break;
        case 1: // Options
            // Add options submenu logic here if needed
            break;
        case 2: // Quit
            game_end();
            break;
    }
}

audio_stop_all()
