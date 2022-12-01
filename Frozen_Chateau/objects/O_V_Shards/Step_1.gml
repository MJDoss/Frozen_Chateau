/// @description 

if(place_meeting(x,y,O_Player) && O_Player.iframes <=0){
	with(O_Player){
		iframes = max_hurt_timer + other.damage;
		hurt_timer = max_hurt_timer;
		state = States.Hurt;
		speed = 2;
		direction = 270;
	}
	global.PlayerData.HP -= damage;
}
