// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
	global.PlayerData = {
	HP : ini_read_real("PlayerData", "MaxHP",60),
	max_HP : ini_read_real("PlayerData", "MaxHP",60),
	stamina : ini_read_real("PlayerData", "MaxHP",60),
	max_stamina : ini_read_real("PlayerData", "MaxHP",60),
	fountain : ini_read_string("PlayerData", "Fountain", "Start"),
	p_room : ini_read_string("PlayerData", "Room", "rm_Chateau_Entrance")
	
	inventory : [inv_crossbow, inv_bombs, inv_firerod]
	}
	inv_crossbow : {
		sprite : spr_GUI_Crossbow,
		acquired : true,
		max_ammo : 20,
		ammo : 20,
	}
	inv_bomb : {
		sprite : spr_GUI_Bomb,
		acquired : true,
		max_ammo : 10,
		ammo : 10,
	}
	inv_firerod : {
		sprite : spr_GUI_Crossbow,
		acquired : false,
		max_ammo : -1,
		ammo : -1,
	}
	
*/

// Create
function Create_Save_File(){
	ini_open("SaveFile.ini");
	// Player Data
	ini_write_real("PlayerData","Max_HP",60);
	ini_write_real("PlayerData","Max_Stamina",60);
	ini_write_real("PlayerData","Flask_Count", 3);
	ini_write_real("PlayerData","Max_Flask_Count", 3);
	ini_write_real("PlayerData","Flask_Heal", 40);
	ini_write_string("PlayerData", "Fountain", "Start");
	ini_write_string("PlayerData", "Room", "rm_Chateau_Entrance");
	
	// Inventory Data
	// Crossbow
	ini_write_real("InventoryData","Crossbow_acquired",true);
	ini_write_real("InventoryData","Crossbow_max_ammo",20);
	ini_write_real("InventoryData","Crossbow_ammo",20);
	
	// Bombs
	ini_write_real("InventoryData","Bomb_acquired",true);
	ini_write_real("InventoryData","Bomb_max_ammo",10);
	ini_write_real("InventoryData","Bomb_ammo",10);
	
	// Fire rod
	ini_write_real("InventoryData","Firerod_acquired",false);
	ini_write_real("InventoryData","Firerod_max_ammo",-1);
	ini_write_real("InventoryData","Firerod_ammo",-1);
	
	ini_close();
}

// Read
function Init_Player_Data(){
	ini_open("SaveFile.ini");
	
	inv_crossbow = {
		sprite : spr_GUI_Crossbow,
		acquired : ini_read_real("InventoryData","Crossbow_acquired",true),
		max_ammo :  ini_read_real("InventoryData","Crossbow_max_ammo", 20),
		ammo : ini_read_real("InventoryData","Crossbow_ammo", 20)
	}
	inv_bombs = {
		sprite : spr_GUI_Bomb,
		acquired : ini_read_real("InventoryData","Bomb_acquired",true),
		max_ammo :  ini_read_real("InventoryData","Bomb_max_ammo", 20),
		ammo : ini_read_real("InventoryData","Bomb_ammo", 20)
	}
	inv_firerod = {
		sprite : spr_GUI_Firerod,
		acquired : ini_read_real("InventoryData","Firerod_acquired",false),
		max_ammo :  ini_read_real("InventoryData","Firerod_max_ammo", -1),
		ammo : ini_read_real("InventoryData","Firerod_ammo", -1)
	}
	
	
	global.PlayerData = {
		HP : ini_read_real("PlayerData", "Max_HP",60),
		max_HP : ini_read_real("PlayerData", "Max_HP",60),
		stamina : ini_read_real("PlayerData", "Max_Stamina",60),
		max_stamina : ini_read_real("PlayerData", "Max_Stamina",60),
		flask_count : ini_read_real("PlayerData", "Flask_count",3),
		max_flask_count : ini_read_real("PlayerData", "Max_Flask_count",3),
		flask_heal : ini_read_real("PlayerData", "Flask_heal",40),
		p_room : ini_read_string("PlayerData", "Room", "rm_Chateau_Entrance"),
		//chunk : ini_read_string("PlayerData", "Chunk", "rm_Chateau_Entrance"),
		fountain : ini_read_string("PlayerData", "Fountain", "Start"),
	}
	global.PlayerInventory = {
		inventory : [inv_crossbow, inv_bombs, inv_firerod],
		index : 0,
		equipped : inv_crossbow
	}
	

	
	ini_close();
}



// 


// Delete
function Delete_Save_File(){
	file_delete("SaveFile.ini");
}
