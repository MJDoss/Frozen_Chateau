/// @description 
if(timer <=0) instance_destroy();
timer--;
if(place_meeting(x,y,O_Wall)) instance_destroy();
