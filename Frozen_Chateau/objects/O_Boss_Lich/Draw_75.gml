/// @description 
if(state != States.Spawn){
	var ws = global.settings.winscale;
	draw_sprite_ext(spr_Boss_Health_Bar,0,120*ws,160*ws,ws,ws,0,-1,1);
	draw_sprite_ext(spr_GUI_health_bar_fill,0,20*ws,162*ws,(HP/max_HP)*200*ws,ws,0,-1,1);
}
