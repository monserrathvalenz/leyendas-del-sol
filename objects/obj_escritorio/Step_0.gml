/// @description Insert description here
// You can write your code in this editor
// Step Event
if (keyboard_check_pressed(vk_space) && 77 < obj_player.y && obj_player.y < 93 && obj_player.x == 80) {
    if (dialogue_index < array_length(dialogue)) {
        dialogue_index++;
    } else {
        dialogue_index = 0; // Reset for next interaction
    }
}

