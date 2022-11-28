/// @description 

switch(state){
	case States.Spawn:
		if(spawn_timer <= 0) state = States.Closing;
		spawn_timer--;
		image_index = image_number-1;
	break;
	case States.Closing:
		image_speed = -1;
		if(image_index == 1) state=States.Closed;
	break;
	
	case States.Closed:
		// This is where the flag check is handled
		image_speed = 0;
		image_index = 0;
		//if(O_Torch_0.lit)state=States.Opening;
	break;
	
	case States.Opening:
		image_speed = 1;
		if(image_index == image_number-1)state=States.Open;
	break;
	
	case States.Open:
		image_speed = 0;
		//instance_destroy();
	break;
}
