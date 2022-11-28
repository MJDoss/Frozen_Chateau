/// @description 

if(place_meeting(x,y,O_Fireball)){
	lit = true;
	O_Spike_Door_0.state = O_Spike_Door_0.States.Opening;
	image_speed = 1;
	with(O_Fireball){
		instance_destroy();
	}
}


