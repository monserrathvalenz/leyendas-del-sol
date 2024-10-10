draw_set_halign(fa_center);
draw_set_font(font_menu);

//line spacing
var _gap = 30;

//draw items
for (var i = 0; i < array_length(menu); ++i) {
	draw_set_color(c_white);
	if i == index draw_set_color(c_teal);
	
    draw_text(room_width/2, room_height * .3 + _gap * i, menu[i]);
}