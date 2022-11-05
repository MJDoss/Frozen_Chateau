/// @description 

draw_sprite_ext(spr_Settings_Bar_Fill,0,x,y,stretch,1,0,-1,1);
draw_sprite(spr_Settings_Bar_Cursor,0,x+stretch,y);
stretch = global.settings.SFX_volume * 100;
