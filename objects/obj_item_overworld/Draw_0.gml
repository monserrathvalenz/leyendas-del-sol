/// @description Insert description here
// You can write your code in this editor
draw_self();

if (dialogue_index > 0 && dialogue_index <= array_length(dialogue)) {
	var _x = 70;
	var _y = 124;

	draw_sprite(sprTextbox, 0, _x, _y);
	draw_set_font(global.TEXTBOX_FONT);
	draw_set_halign(fa_left);
	draw_text_ext(_x + 8, _y + 4, dialogue[dialogue_index - 1], 10, 230);
	obj_player.movement=false;
	
	// Dibuja la cara del personaje a la derecha del cuadro de diálogo
    var face_x = 6;  // Posición X de la cara (ajústala según necesites)
    var face_y = 124;        // Posición Y de la cara (alineada con el cuadro de texto)
	
	var scale_x = 0.5;  
    var scale_y = 0.4;  

	if (dialogue_index <= array_length(face_frames)) {
        var frame_index = face_frames[dialogue_index - 1]; // Obtiene el frame correspondiente
        draw_sprite_ext(spr_carasdulce, frame_index, face_x, face_y, scale_x, scale_y, 0, c_white, 1);
    }
}

if (global.key_collected) {
    instance_destroy();
}
