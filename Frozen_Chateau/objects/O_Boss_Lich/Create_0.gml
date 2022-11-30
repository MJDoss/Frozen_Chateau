/// @description 

max_HP = 400;
HP = max_HP;

States = {
	Spawn : 0,
	Idle : 1,
	Dying : 2,
	Dead : 3
}
state = States.Spawn;
spawn_timer = 5;
dying_timer = 150;

dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);


// Damage table
Damage_From = {
	Sword : 8,
	Bolt : 8,
	Bomb : 20,
	Fire : 10
}
max_iframes = 25;
iframes=0;

depth=-y;
