/// @description 
dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);

lines = ["You found a Hearty Herb!!", "Max HP increased by 20 pts!"];
line =0;

States = {
	Closed : 0,
	Opening : 1,
	Opened : 2
}

ini_open("SaveFile.ini");
if(ini_read_real("DungeonData", "Chest_3", 0)){ 
	state = States.Opened;
}else{
	state = States.Closed;
}
ini_close();
