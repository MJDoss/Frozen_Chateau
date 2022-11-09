/// @description 

depth = -y;
var _player = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+8, O_Player,false,true);


if(_player != noone && AButtonPressed()){
	audio_play_sound(SFX_message,1,0);
	_player.state = _player.States.Read;
}

if(line >= array_length(lines)){
	_player.state = _player.States.Idle;
	line = 0;
}

if(AButtonPressed()) line ++;
