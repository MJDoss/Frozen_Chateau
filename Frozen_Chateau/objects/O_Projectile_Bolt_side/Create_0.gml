/// @description 

image_index = 0;
image_speed = 0;
speed = 4;
timer = 60;

switch(O_Player.facing){
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
