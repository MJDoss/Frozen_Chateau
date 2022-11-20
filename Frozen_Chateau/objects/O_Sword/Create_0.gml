/// @description 
audio_play_sound(SFX_Sword,1,0);
switch(O_Player.facing){
	case O_Player.Facing_states.Up:
		image_angle = 270;
	break;
	case O_Player.Facing_states.Down:
		image_angle = 90;
	break;
	case O_Player.Facing_states.Left:
		image_angle = 0;
	break;
	case O_Player.Facing_states.Right:
		image_angle = 180;
	break;
}
