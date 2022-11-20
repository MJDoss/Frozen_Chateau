/// @description 

draw_self();
if( arr[0]=="Continue" ){
	draw_sprite(spr_File_Systems_Continue,0,80, 68);
} 
draw_sprite(spr_File_Systems_New_Game,0,80,88);
draw_sprite(spr_File_Systems_Options,0,80,108);
draw_sprite(spr_File_Systems_Exit,0,80,128);

switch (word){
	case "Continue" :
		// TODO
		y = 76;
		if(UpPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind--;
			}
		if(DownPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind++;
			}
	break;
	
	case "New Game" :
		// Fix Later
		y = 96;
		if(AButtonPressed()){
			(file_exists("SaveFile.ini")){
				Delete_Save_File();
			}
			Create_Save_File();
			Init_Player_Data();
			audio_stop_all();
			room_goto(rm_Chateau_Entrance);
			audio_play_sound(music_KF4_Mansion_of_Howling_Winds, 1, 1);	
			
		}
		if(UpPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind--;
			}
		if(DownPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind++;
			}
	break;
	
	case "Options" :
		y = 116;
		if(AButtonPressed()){
			audio_play_sound(SFX_menu_open,1,0);
			room_goto(rm_Settings);
			}
		if(UpPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind--;
			}
		if(DownPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind++;
			}
	break;
	
	case "Exit" :
		y = 136;
		if(AButtonPressed()) game_end();
		if(UpPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind--;
			}
		if(DownPressed()){ 
			audio_play_sound(SFX_message,1,0);
			ind++;
			}
	break;

}

if (ind <0) ind = max_ind-1;
if (ind == max_ind) ind = 0;
word = arr[ind];

