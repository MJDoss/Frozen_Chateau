/// @description

depth=-100;
//image_angle = 270;
ini_open("SaveFile.ini");
if(ini_read_real("DungeonData", "Bombiwall_1", 0)) instance_destroy();
//show_debug_message("Bombiwall_0 : " + string(ini_read_real("DungeonData", "Bombiwall_0", 0)));
ini_close();
