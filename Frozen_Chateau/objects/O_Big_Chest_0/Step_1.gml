/// @description 

depth = -y;


switch(state){
	case States.Closed:
	var _player = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+8, O_Player,true,true);
	if(_player != noone && AButtonPressed()){
		ini_open("SaveFile.ini");
		ini_write_real("DungeonData", "Big_Chest_0", 1);
		// ini_write_real("InventoryData","Firerod_acquired",false);
		ini_write_real("InventoryData", "Firerod_acquired", true);
		global.PlayerInventory.inventory[2].acquired = true;
		ini_close();
		audio_play_sound(SFX_item_get,1,0);
		_player.state = _player.States.Read;
		//global.PlayerData.key_count++;
		state = States.Opening;
	}
	break;
	
	case States.Opening:
		sprite_index = spr_Big_Chest_Opened;
		if( O_Player.state == O_Player.States.Read){
			if(line >= array_length(lines) ){
				
				O_Player.state = O_Player.States.Idle;
				state = States.Opened;
				line = 0;
			}
			if(AButtonPressed()){
				audio_play_sound(SFX_message_finish,1,0);
				line ++;
			}
		}
	break;
	
	case States.Opened:
		sprite_index = spr_Big_Chest_Opened;
	break;

}

