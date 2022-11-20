/// @description 

speed -= .08;
if(speed < 0) speed = 0;

if(image_index >= image_number-1 || place_meeting(x,y,O_Enemy)){
	instance_change(O_Bomb_Explosion,true);
}

