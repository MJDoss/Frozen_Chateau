/// @description 


if(state == States.Opening){
	var ws = global.settings.winscale;
	draw_set_font(fDialogue_x2);
	if(O_Player.state == O_Player.States.Read){
		draw_rectangle_color( 40 * ws, 120* ws, 200* ws, 144* ws, c_black,c_black,c_black,c_black,false);
	
		if(line < array_length(lines)){
			draw_text_color(50* ws,128* ws, lines[line], c_white, c_white, c_white, c_white, 1);
		}
	}
}
