/// @description 

gpu_set_blendenable(false);

if(sl_pause){

	surface_set_target(application_surface);
	if(surface_exists(sl_pauseSurf)) draw_surface(sl_pauseSurf,0,0);
	else{
		sl_pauseSurf = surface_create(resW * global.settings.winscale, resH * global.settings.winscale);
		buffer_set_surface(sl_pauseSurfBuffer, sl_pauseSurf, 0);
	}
	surface_reset_target();
}

if (SelectPressed()){ 
	if(!sl_pause){ // Select Pause
		sl_pause = true;
		
		instance_deactivate_all(true);
		
		// Create Pause Menu
		instance_create_depth(0,0,0,O_Pause_Map);
		
		// Captures this game moment
		sl_pauseSurf = surface_create(resW * global.settings.winscale,resH * global.settings.winscale);
		surface_set_target(sl_pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		// Backs up this surface to a buffer in case of loss
		if(buffer_exists(sl_pauseSurfBuffer)) buffer_delete(sl_pauseSurfBuffer);
		sl_pauseSurfBuffer = buffer_create( resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(sl_pauseSurfBuffer, sl_pauseSurf, 0);
		
		
		
	} else { // Un Select Pause.
		sl_pause = false;
		instance_activate_all();
		if(surface_exists(sl_pauseSurf)) surface_free(sl_pauseSurf);
		if(buffer_exists(sl_pauseSurfBuffer)) buffer_delete(sl_pauseSurfBuffer);
	}
}



gpu_set_blendenable(true);


