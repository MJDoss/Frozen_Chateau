/// @description 

view_camera[0] = camera_create();

window_set_size(view_width * global.settings.winscale , view_height * global.settings.winscale);
surface_resize(application_surface, view_width * global.settings.winscale, view_height * global.settings.winscale);

States = {
	follow_player : 0,
	slide : 1,
	fade_out : 2,
	black : 3,
	fade_in : 4
}
state = States.black;



slide_transition_timer = 0;
max_fade_to_black_timer = 15;
fade_to_black_timer = max_fade_to_black_timer;
max_black_timer = 15;
black_timer = max_black_timer;
max_fade_in_black_timer = 15;
fade_in_black_timer = max_fade_in_black_timer;
black_fade_alpha = .99 / max_fade_in_black_timer;
lock = false;

draw_start_menu = false;
