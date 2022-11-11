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
		instance_activate_region(bbox_left +2, bbox_top+2, sprite_width-2, sprite_height-2, true);
		layer_set_visible(floor_layer, true);
		
		var _player = collision_rectangle(bbox_left+ 2, bbox_bottom -2, bbox_right-2, bbox_top + 2, O_Player,false,true);
			if(_player == noone){
				state = States.Inactive;
			}
	break;
	
	case States.Deactivating_Slide:
		
	break;
	
	case States.Inactive:
		instance_deactivate_region(bbox_left +2, bbox_top+2, sprite_width-2, sprite_height-2, true, true);
		instance_activate_object(O_Player);
		layer_set_visible(floor_layer, false);
		var _player = collision_rectangle(bbox_left+ 2, bbox_bottom -2, bbox_right-2, bbox_top + 2,  O_Player,false,true);
			if(_player != noone){
				state = States.Active;
			} else{
				state = States.Inactive;
			}
	break;
	
	case States.Activating_Slide:
		
	break;
}
