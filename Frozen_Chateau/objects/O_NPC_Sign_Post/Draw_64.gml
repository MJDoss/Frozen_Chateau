/// @description 

var ws = global.settings.winscale;
draw_set_font(fDialogue_x1);
if(O_Player.state == O_Player.States.Read){
	draw_rectangle_color( 40 * global.settings.winscale, 100* global.settings.winscale, 200* global.settings.winscale, 160* global.settings.winscale, c_blue,c_blue,c_blue,c_blue,true);
	
	if(line < array_length(lines)) draw_text_color(50* global.settings.winscale,110* global.settings.winscale, lines[line], c_white, c_white, c_white, c_white, 1);
}

