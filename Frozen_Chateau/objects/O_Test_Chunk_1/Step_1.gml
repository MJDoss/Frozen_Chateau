/// @description 


switch (state) {
	case States.Spawn:
		if(spawn_timer <=0){
			var _player = collision_rectangle(bbox_left+ 2, bbox_bottom -2, bbox_right-2, bbox_top + 2, O_Player,true,true);
			if(_player != noone){
				state = States.Active;
			} else{
				state = States.Inactive;
			}
		}
		spawn_timer--;
	break;
	
	case States.Active:
		instance_activate_region(bbox_left +4, bbox_top+4, sprite_width-8, sprite_height-8, true);
		global.PlayerData.chunk = id;
		//show_debug_message("Current_Chunk : " + string(global.PlayerData.chunk));
		layer_set_visible(floor_layer, true);
		var _player = collision_rectangle(bbox_left+ 2, bbox_bottom -2, bbox_right-2, bbox_top + 2, O_Player,false,true);
			if(_player == noone){
				state = States.Inactive;
			}
	break;
	/*
	case States.Deactivating_Slide:
		
	break;
	*/
	case States.Inactive:
		instance_deactivate_region(bbox_left +4, bbox_top+4, sprite_width-8, sprite_height-8, true, true);
		layer_set_visible(floor_layer, false);
		var _player = collision_rectangle(bbox_left+ 2, bbox_bottom -2, bbox_right-2, bbox_top + 2,  O_Player,false,true);
			if(_player != noone){
				state = States.Active;
			} else{
				state = States.Inactive;
			}
	break;
	/*
	case States.Activating_Slide:
		
	break;
	*/
}


instance_activate_object(O_Chunk);
instance_activate_object(O_Player);
