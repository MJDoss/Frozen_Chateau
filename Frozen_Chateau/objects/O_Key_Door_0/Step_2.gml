/// @description 

var _col_list = ds_list_create();
var _num = collision_rectangle_list(bbox_left,bbox_bottom,bbox_right,bbox_top,O_Effected_By_Walls,false,true,
	_col_list, false);
	
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
		var dir_obj = point_direction(x, y, _col_list[| i].x, _col_list[| i].y);
        //check right
		if(dir_obj >= dir_bottom_right || dir_obj <= dir_top_right) _col_list[| i].x += (bbox_right - _col_list[| i].bbox_left);		
		//check top
		if(dir_obj >= dir_top_right && dir_obj <= dir_top_left) _col_list[| i].y += (bbox_top - _col_list[| i].bbox_bottom);
		// check left
		if(dir_obj >= dir_top_left && dir_obj <= dir_bottom_left) _col_list[| i].x += (bbox_left - _col_list[| i].bbox_right);
		//check bottom
		if(dir_obj <= dir_bottom_right && dir_obj >= dir_bottom_left) _col_list[| i].y += (bbox_bottom - _col_list[| i].bbox_top);
    }
}		
ds_list_destroy(_col_list);

