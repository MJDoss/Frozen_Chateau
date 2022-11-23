/// @description 

if(place_meeting(x,y,O_Fireball)){
	lit = true;
	image_speed = 1;
	with(O_Fireball){
		instance_destroy();
	}
}
