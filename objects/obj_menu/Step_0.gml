//get input
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _down - _up;
if _move != 0 {
	//move the index
	index += _move;
	
	//clamp values
	var _size = array_length(menu);
	if index < 0 index = 1;     //at start, so loop to menu end
	else if index >= _size index = 0;  //at end, so loop to menu start
}

if _select {
	switch(index){
		case 0:
			//Start
			room_goto(room_textoestatico);
		break;
		case 1:
			//Exit
			game_end();
		break;
	}
}
	