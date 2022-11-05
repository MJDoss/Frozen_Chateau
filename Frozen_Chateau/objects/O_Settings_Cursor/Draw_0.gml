/// @description 

draw_self();

switch (word){
	case "Visuals" :
		y = 68;
		if(AButtonPressed()){
			audio_play_sound(SFX_menu_open,1,0);
			room_goto(rm_Settings_Visual);
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
	
	case "Audio" :
		// Todo add create game save file and start base game.
		y = 96;
		if(AButtonPressed()){ 
			audio_play_sound(SFX_menu_open,1,0);
			room_goto(rm_Settings_Audio);
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
	
	case "Back" :
		y = 124;
		if(AButtonPressed()){ 
			audio_play_sound(SFX_menu_close,1,0);
			room_goto(rm_FileSystem);
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
	

}


if(BButtonPressed()){ 
	audio_play_sound(SFX_menu_close,1,0);
	room_goto(rm_FileSystem);
	}
if (ind <0) ind = max_ind-1;
if (ind == max_ind) ind = 0;
word = arr[ind];

