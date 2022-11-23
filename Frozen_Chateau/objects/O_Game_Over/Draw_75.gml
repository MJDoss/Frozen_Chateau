/// @description 
var _centerX = view_width/2 * global.settings.winscale;
var _centerY = view_height/2 * global.settings.winscale;
var _ws = global.settings.winscale;
draw_sprite_ext(spr_Game_Over_screen,0,_centerX,_centerY,global.settings.winscale,global.settings.winscale,0,-1,1);

switch(ind){
	case 0:
		draw_sprite_ext(spr_Settings_Cursor,0,90*_ws,104*_ws,_ws,_ws,0,-1,1);
		if(AButtonPressed()){
			room_goto(rm_Chateau_Entrance);
			audio_play_sound(music_KF4_Mansion_of_Howling_Winds,1,1);
			global.PlayerData.HP = global.PlayerData.max_HP;
			global.PlayerData.flask_count = global.PlayerData.max_flask_count;
			instance_destroy();
		}
		if(UpPressed()|| DownPressed()) ind=1;
	break;
	
	case 1:
		draw_sprite_ext(spr_Settings_Cursor,0,90*_ws,124*_ws,_ws,_ws,0,-1,1);
		if(AButtonPressed()) room_goto(rm_TitleScreen);
		if(UpPressed()|| DownPressed()) ind=0;
	break;
}
