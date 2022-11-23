/// @description 

switch state {
	case States.Still:
		if(place_meeting(x,y,O_Fireball)){
			with(O_Fireball){
				instance_destroy();
			}
			
			state = States.Melting;
		}
	break;
	
	case States.Melting:
		image_yscale = melt_timer / 30;
		image_alpha  = melt_timer / 30;
		if(melt_timer<=0) state = States.Melted;
		melt_timer--;
	break;
	
	case States.Melted:
		instance_destroy();
	break;
}
