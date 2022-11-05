/// @description 

switch(state){
	case States.follow_player:
		if(instance_exists(O_Player)){
			var _x = clamp(O_Player.x-view_width/2, global.active_cell.xMin, global.active_cell.xMax - view_width);
			var _y = clamp(O_Player.y-view_height/2, global.active_cell.yMin , global.active_cell.yMax - view_height);
	
			var _cur_x = camera_get_view_x(view_camera[0]);
			var _cur_y = camera_get_view_y(view_camera[0]);
	
			var _spd = .3;
			camera_set_view_pos(view_camera[0],
								lerp(_cur_x,_x,_spd),
								lerp(_cur_y,_y,_spd));
			if(slide_transition_timer > 0){
				camera_state = camera_states.slide;
			}
		} else {
			camera_state = camera_states.black;
		}
	break;
	
	
}
