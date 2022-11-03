/// @description Insert description here
// You can write your code in this editor


view_camera[0] = camera_create();

window_set_size(view_width * global.settings.winscale, view_height * global.settings.winscale);
camera_set_view_size(view_camera[0], view_width * global.settings.winscale, view_height * global.settings.winscale);
surface_resize(application_surface, view_width * global.settings.winscale, view_height * global.settings.winscale);

