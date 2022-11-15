/// @description 

gpu_set_blendenable(false);

if(pause){

	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
	else{
		pauseSurf = surface_create(resW * global.settings.winscale, resH * global.settings.winscale);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	surface_reset_target();
}

if (StartPressed()){ 
	if(!pause){ // Pause
		pause = true;
		
		instance_deactivate_all(true);
		
		// Create Pause Menu
		instance_create_depth(0,0,0,O_Pause_Menu);
		
		// Captures this game moment
		pauseSurf = surface_create(resW * global.settings.winscale,resH * global.settings.winscale);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		// Backs up this surface to a buffer in case of loss
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create( resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		
		
		
	} else { // Un Pause.
		pause = false;
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}



gpu_set_blendenable(true);


