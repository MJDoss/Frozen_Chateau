/// @description 
var ws = global.settings.winscale;
if(state==States.Charging_V_Shards){
	draw_sprite_ext(spr_Boss_Charging_Bar,0,x,y-16,1,1,0,-1,1);
	draw_sprite_ext(spr_Boss_Charging_Bar_Fill,0, x-10, y-20,((max_charge_timer - charge_timer)/ max_charge_timer) * 20 ,1,0,-1,1);
}
draw_self();
