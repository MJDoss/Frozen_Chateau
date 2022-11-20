/// @description 

// FSM
States = {
	Spawn : 0,
	Active : 1,
	Deactivating_Slide : 2,
	Inactive : 3,
	Activating_Slide : 4
}
state = States.Spawn;


dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);

spawn_timer = 5;




