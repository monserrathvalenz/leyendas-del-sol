sprite_index = item.sprite; 

if place_meeting(x, y, obj_player) 
{
	item_add (item); 
	// Marcar la llave como recogida
	global.key_collected = true;
	instance_destroy(); 
}

if (keyboard_check_pressed(vk_space) && obj_player.x == 50 && obj_player.y > 76 && obj_player.y < 90){
	if (dialogue_index < array_length(dialogue)) {
		dialogue_index++; 
		obj_player.movement=false;
    } 
	else {
		dialogue_index = 0; // Reset for next interaction
		obj_player.movement=true;
		item_add (item);
		global.key_collected = true;
		instance_destroy();
    } 
}
	


