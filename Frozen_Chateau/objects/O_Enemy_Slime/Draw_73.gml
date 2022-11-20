/// @description 

if(HP < max_HP && HP>0){
	// Draw Health bar.
	draw_sprite(spr_Enemy_HP_Bar,0,x, bbox_top-16 );
	draw_sprite_ext(Enemy_HP_Bar_Fill,0,x-5,bbox_top-16, round(10*HP/max_HP),1,1,-1,1);
}
draw_self();
