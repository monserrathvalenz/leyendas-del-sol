if (keyboard_check_pressed(vk_space)) {
	if (obj_player.x > 324 && obj_player.x < 392 && obj_player.y > 413 && obj_player.y < 468) {
                // Cambia a la sala deseada
                room_goto(room_continuara);
            }
}