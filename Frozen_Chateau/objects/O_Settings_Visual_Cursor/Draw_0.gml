/// @description 

draw_self();

switch (word){
	case "x1" :
		x = 44;
		y = 80;
		if(AButtonPressed()){ 
			global.settings.winscale = 1;
			audio_play_sound(SFX_message_finish,1,0);
			room_restart();
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
	
	case "x2" :
		x = 84;
		y = 80;
		if(AButtonPressed()){
			global.settings.winscale = 2;
			audio_play_sound(SFX_message_finish,1,0);
			room_restart();
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
	
	case "x3" :
		x = 124;
		y = 80;
		if(AButtonPressed()){
			global.settings.winscale = 3;
			audio_play_sound(SFX_message_finish,1,0);
			room_restart();
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
	
	case "x4" :
		x = 164;
		y = 80;
		if(AButtonPressed()){
			global.settings.winscale = 4;
			audio_play_sound(SFX_message_finish,1,0);
			room_restart();
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

switch(ws){
	case 1:
	draw_sprite(spr_Settings_Button_Selected,0,60,80);
	break;
	case 2:
	draw_sprite(spr_Settings_Button_Selected,0,100,80);
	break;
	case 3:
	draw_sprite(spr_Settings_Button_Selected,0,140,80);
	break;
	case 4:
	draw_sprite(spr_Settings_Button_Selected,0,180,80);
	break;
}

if(BButtonPressed()){ 
	audio_play_sound(SFX_menu_close,1,0);
	room_goto(rm_Settings);
	}
ws = global.settings.winscale;
if (ind <0) ind = max_ind-1;
if (ind == max_ind) ind = 0;
word = arr[ind];

