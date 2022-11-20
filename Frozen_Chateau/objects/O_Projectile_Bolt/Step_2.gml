/// @description 
if(timer <=0) instance_destroy();
timer--;
if(place_meeting(x,y,O_Wall)){
	audio_play_sound(SFX_Bolt_hit_wall,1,0);
	instance_destroy();
}
