/// @description 

var _player = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,O_Player,false,1);
if(_player != noone){
	//room_instance_add(rm_Chateau_Entrance,148, 100, O_Player);
	with(_player){
		x = 148;
		y = 100;
		//instance_destroy();
	}
	audio_play_sound(SFX_door_open,1,0);
	room_goto(rm_Chateau_Entrance);
}