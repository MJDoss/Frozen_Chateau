/// @description 

if(place_meeting(x,y,O_Fireball)){
	lit = true;
	with(O_Fireball){
		instance_destroy();
	}
}
