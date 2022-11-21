/// @description 

var ws = global.settings.winscale;

draw_set_font(fDialogue_x3);

if(O_Player.state == O_Player.States.Read){
	draw_rectangle_color( 40 * global.settings.winscale, 120* global.settings.winscale, 200* global.settings.winscale, 144* global.settings.winscale, c_black,c_black,c_black,c_black,false);
	
	if(line < array_length(lines)){
		draw_text_color(50* global.settings.winscale,128* global.settings.winscale, lines[line], c_white, c_white, c_white, c_white, 1);
	}
}

