/// @description 

depth = -y;
var _player = collision_rectangle(bbox_left-8, bbox_top-8, bbox_right+8, bbox_bottom+8, O_Player, false, true);


if(_player != noone && AButtonPressed()){
	audio_play_sound(SFX_Rest,1,0);
	_player.state = _player.States.Read;
	global.PlayerData.HP = global.PlayerData.max_HP;
	global.PlayerData.flask_count = global.PlayerData.max_flask_count;
	global.PlayerData.save_spawn = "Start";
	ini_open("SaveFile.ini");
	ini_write_string("PlayerData", "Fountain", "Start");
	ini_close();
}

if(_player != noone && _player.state == _player.States.Read){
	if(line >= array_length(lines) ){
	_player.state = _player.States.Idle;
	line = 0;
	}
	if(AButtonPressed()) line ++;
}


