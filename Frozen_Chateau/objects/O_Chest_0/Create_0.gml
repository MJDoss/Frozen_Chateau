/// @description 
dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);


States = {
	Closed : 0,
	Opening : 1,
	Opened : 2
}


if(){ 
	state = States.Opened;
}else{
	state = States.Closed;
}
