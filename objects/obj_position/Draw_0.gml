// Optionally, you can draw a position for another object (e.g., obj_player)
if (instance_exists(obj_player)) {
    var _player_pos_x = obj_player.x;
    var _player_pos_y = obj_player.y;
    draw_text(72, 142, "Player Position: (" + string(_player_pos_x) + ", " + string(_player_pos_y) + ")");
}
