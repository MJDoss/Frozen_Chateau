/// @description 
var _col_list = ds_list_create();
var _num = collision_rectangle_list(bbox_left,bbox_bottom,bbox_right,bbox_top,O_Effected_By_Walls,false,true,
	_col_list, false);
	
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {	
		//check Bottom
		_col_list[| i].y += (bbox_bottom - _col_list[| i].bbox_top);
    }
}		
ds_list_destroy(_col_list);

if(place_meeting(x,y,O_Bomb_Explosion)){
	audio_play_sound(SFX_ram,1,0);
	ini_open("SaveFile.ini");
	ini_write_real("DungeonData", "Bombiwall_0", 1);
	ini_close();
	instance_destroy();
}
