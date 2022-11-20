/// @description 

camera_set_view_size(view_camera[0], view_width, view_height);


switch(state){
	case States.spawn:
		if(spawn_timer<15){
			if(instance_exists(O_Player)){
				var _x = clamp(O_Player.x-view_width/2, global.PlayerData.chunk.bbox_left, global.PlayerData.chunk.bbox_right - view_width);
				var _y = clamp(O_Player.y-view_height/2, global.PlayerData.chunk.bbox_top, global.PlayerData.chunk.bbox_bottom - view_height);
			
				var _cur_x = camera_get_view_x(view_camera[0]);
				var _cur_y = camera_get_view_y(view_camera[0]);
	
				var _spd = .6;
				camera_set_view_pos(view_camera[0],
									lerp(_cur_x,_x,_spd),
									lerp(_cur_y,_y,_spd));
			}
		}
		if(spawn_timer <= 0){
			state = States.follow_player;
		}
		spawn_timer--;
	break;
	
	case States.follow_player:
		if(instance_exists(O_Player)){
			var _x = clamp(O_Player.x-view_width/2, global.PlayerData.chunk.bbox_left, global.PlayerData.chunk.bbox_right - view_width);
			var _y = clamp(O_Player.y-view_height/2, global.PlayerData.chunk.bbox_top, global.PlayerData.chunk.bbox_bottom - view_height);
			
			var _cur_x = camera_get_view_x(view_camera[0]);
			var _cur_y = camera_get_view_y(view_camera[0]);
	
			var _spd = .3;
			camera_set_view_pos(view_camera[0],
								lerp(_cur_x,_x,_spd),
								lerp(_cur_y,_y,_spd));
			if(slide_transition_timer > 0) state = States.slide;
		} else {
			state = States.black;
		}
	break;
	
	case States.slide:
	
	break;
	
	case States.black:
		if(black_timer == 0) state = States.follow_player;
		black_timer--;	
	break;
	
}
