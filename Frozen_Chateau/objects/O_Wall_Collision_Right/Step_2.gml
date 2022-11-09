/// @description 

var _col_list = ds_list_create();
var _num = collision_rectangle_list(bbox_left,bbox_bottom,bbox_right,bbox_top,O_Effected_By_Walls,false,true,
	_col_list, false);
	
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {	
		//check Righth
		_col_list[| i].x += (bbox_right - _col_list[| i].bbox_left);
    }
}		
ds_list_destroy(_col_list);
