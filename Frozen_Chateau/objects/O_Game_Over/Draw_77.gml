/// @description 

gpu_set_blendenable(false);

if(player_dead){
	instance_deactivate_all(true);
		
	// Create Pause Menu
	//instance_create_depth(0,0,0,O_Pause_Menu);
		
	// Captures this game moment
	pauseSurf = surface_create(resW * global.settings.winscale,resH * global.settings.winscale);
	surface_set_target(pauseSurf);
	draw_surface(application_surface,0,0);
	surface_reset_target();
		
	// Backs up this surface to a buffer in case of loss
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	pauseSurfBuffer = buffer_create( resW * resH * 4, buffer_fixed, 1);
	buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		
	player_dead = false;
}
gpu_set_blendenable(true);


