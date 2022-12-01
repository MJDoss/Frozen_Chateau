/// @description 

var _player = collision_rectangle(bbox_left-8, bbox_top-8, bbox_right+8, bbox_bottom+8, O_Player,true,true);
if(_player != noone && AButtonPressed()){
	ini_open("SaveFile.ini");
	ini_write_real("DungeonData", "Key_Door_1", 1);
	global.PlayerData.key_count--;
	ini_write_real("PlayerData", "Key_Count", global.PlayerData.key_count);
	ini_close();
	audio_play_sound(SFX_use_key,1,0);
	//_player.state = _player.States.Read;
	//state = States.Opening;
	instance_destroy();
}
