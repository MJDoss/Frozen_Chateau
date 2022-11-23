/// @description 

dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);

depth = -800;

ini_open("SaveFile.ini");
if(ini_read_real("DungeonData", "Key_Door_0", 0)){ 
	instance_destroy();
}
ini_close();
