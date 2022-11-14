/// @description 

for(ind = 0; ind < array_length(arr); ind++){
	draw_set_font(fDialogue_x1);
	draw_text(40 * global.settings.winscale, 40 * global.settings.winscale * (ind + 1), arr[ind]);
}

switch(sel){
	case 0: // Continue
		draw_sprite(spr_Settings_Bar_Cursor,0,20, 40 * global.settings.winscale * (sel + 1));
		if(UpPressed() || DownPressed()){
			audio_play_sound(SFX_message,1,0);
			sel ++;
		}
		if(AButtonPressed()){
			O_Pause.pause = false;
			audio_play_sound(SFX_message_finish,1,0);
			instance_destroy();
		}
	break;
	case 1:
		draw_sprite(spr_Settings_Bar_Cursor,0,20, 40 * global.settings.winscale * (sel + 1));
		if(UpPressed() || DownPressed()){
			audio_play_sound(SFX_message,1,0);
			sel --;
		}
		if(AButtonPressed()) {
			audio_play_sound(SFX_message_finish,1,0);
			instance_destroy(O_Pause);
			// Save game line
			room_goto(rm_TitleScreen);
		}
	break;

}
if(instance_exists(O_Pause)){
	if(!O_Pause.pause) instance_destroy();
} else {
	exit;
}
