/// @description Insert description here
// You can write your code in this editor

if(timer <= 0){
	if(flicker_rate > 0){
		visible = true;
		flicker_rate--;
	} else {
		
		if(invisivle_rate>0){
			visible = false;
			invisivle_rate--;
		}
		if(invisivle_rate<=0){
			flicker_rate = flicker_rate_max;
			invisivle_rate = invisible_rate_max;
		}
	}
	
	if(StartPressed()){
		audio_play_sound(SFX_menu_open,1,0);
		room_goto(rm_FileSystem);
	}
}

if(timer > 0) timer--;