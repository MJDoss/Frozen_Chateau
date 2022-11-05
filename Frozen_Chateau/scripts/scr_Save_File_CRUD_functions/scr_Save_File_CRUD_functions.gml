// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function Create_Save_File(){
	ini_open("SaveFile.ini");
	ini_write_real("PlayerData","Max_HP",60);
	ini_write_real("PlayerData","Max_Stamina",60);
	ini_write_real("PlayerData","Max_Flask", 3);
	ini_write_string("PlayerData", "Fountain", "Start");
	ini_write_string("PlayerData", "Room", "rm_Chateau_Entrance");
	
	ini_close();
}

function Init_Player_Data(){
	ini_open("SaveFile.ini");
	global.PlayerData = {
	HP : ini_read_real("PlayerData", "MaxHP",60),
	max_HP : ini_read_real("PlayerData", "MaxHP",60),
	stamina : ini_read_real("PlayerData", "MaxHP",60),
	max_stamina : ini_read_real("PlayerData", "MaxHP",60),
	fountain : ini_read_string("PlayerData", "Fountain", "Start"),
	p_room : ini_read_string("PlayerData", "Room", "rm_Chateau_Entrance")
	
	}
	
	
	ini_close();
}


// Delete
function Delete_Save_File(){
	file_delete("SaveFile.ini");
}
