// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_encounter(_enemies,_bg)
{
	instance_create_depth
	(
		camera_get_view_x(view_camera[0]),
		camera_get_view_y(view_camera[0]),
		-9999,
		obj_battle,
		{enemies: _enemies, creator: id, battle_bg: _bg}
	);
}