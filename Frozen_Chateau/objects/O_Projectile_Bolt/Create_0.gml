/// @description 

image_index = 0;
image_speed = 0;
speed = 4;
timer = 60;
audio_play_sound(SFX_Bolt,1,0);

switch(O_Player.facing){
	case O_Player.Facing_states.Up:
	direction = 90;
	image_angle=direction;
	break;
	case O_Player.Facing_states.Down:
	direction = 270;
	image_angle=270;
	break;
	case O_Player.Facing_states.Left:
	direction = 180;
	image_xscale= -1;
	// Calculate distance to wall on left and set timer to that.
	
	break;
	case O_Player.Facing_states.Right:
	direction = 0;
	// Calculate distance to wall on right and set timer to that.
	
	break;
}
