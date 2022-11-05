/// @description 

draw_self();

switch (word){
	case "Master" :
		x = 60;
		y = 44;
		if(LeftPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.master_volume >0) global.settings.master_volume -= .1;
			audio_set_master_gain(0, global.settings.master_volume);
		}
		if(RightPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.master_volume <1)  global.settings.master_volume += .1;
			audio_set_master_gain(0, global.settings.master_volume);
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
	
	case "Music" :
		x = 60;
		y = 68;
		if(LeftPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.music_volume >0) global.settings.music_volume -= .1;
		}
		if(RightPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.music_volume <1) global.settings.music_volume += .1;
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
	
	case "SFX" :
		x = 60;
		y = 92;
		if(LeftPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.SFX_volume >0) global.settings.SFX_volume -= .1;
		}
		if(RightPressed()){
			audio_play_sound(SFX_message,1,0);
			if(global.settings.SFX_volume <1) global.settings.SFX_volume += .1;
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
		x = 136;
		y = 124;
		if(AButtonPressed()){ 
			audio_play_sound(SFX_menu_close,1,0);
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
	
}


if(BButtonPressed()){ 
	audio_play_sound(SFX_menu_close,1,0);
	room_goto(rm_Settings);
}

if (ind <0) ind = max_ind-1;
if (ind == max_ind) ind = 0;
word = arr[ind];

