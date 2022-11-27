/// @description 

switch(state){
	case States.spawn:
		
		if(spawn_timer<15){
			draw_sprite_ext(spr_Black_Screen,0,0,0,global.settings.winscale,global.settings.winscale,0,-1,spawn_timer/10);
		} else {
			draw_sprite_ext(spr_Black_Screen,0,0,0,global.settings.winscale,global.settings.winscale,0,-1,1);
		}
	break;
	
	case States.follow_player:
	Draw_In_Game_HUD();
	break;
}




