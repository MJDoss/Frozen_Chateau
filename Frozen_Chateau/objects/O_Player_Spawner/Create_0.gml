/// @description 
if( instance_exists(O_Player)){ 
	instance_destroy();
} else{
	instance_create_depth(x,y,-y,O_Player);
}
