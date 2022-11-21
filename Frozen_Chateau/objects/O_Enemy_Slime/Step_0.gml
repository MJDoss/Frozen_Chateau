/// @description 


switch(state){
	case States.Spawn:
		if(spawn_timer <= 0) state = States.Roam;
		spawn_timer--;
	break;
	
	case States.Roam:
		if( distance_to_object(O_Player) < 65){
			notice_timer--;
			if(notice_timer <=0) state = States.Pursue;
		} else {
			notice_timer = 15;
		}
		if(roam_timer<=0){
			roam_timer = 25 * irandom_range(2,6);
			direction = 45 * irandom_range(0,7);
			speed = spd;
		}
		roam_timer--;
		if(HP <= 0) state = States.Dying;
	break;
	
	case States.Pursue:
		direction = point_direction(x,y,O_Player.x,O_Player.y);
		if(distance_to_object(O_Player) > 80) state = States.Roam;
		if(HP <= 0) state = States.Dying;
	break;
	
	case States.Dying:
		if(dying_timer<=0) state = States.Dead;
		speed = 0;
		image_speed = 0;
		image_alpha = dying_timer/30;
		
		dying_timer--;
	break;
	
	case States.Dead:
		audio_play_sound(SFX_enemy_dies,1,0);
		instance_destroy();
	break;
}

if(place_meeting(x,y,O_Bomb_Explosion) && iframes <= 0){
	HP-=Damage_From.Bomb;
	iframes+=15;
}
if(place_meeting(x,y,O_Fireball) && iframes <= 0){
	HP-=Damage_From.Bomb;
	iframes+=15;
	with(O_Fireball){
		instance_destroy();
	}
}
if(place_meeting(x,y,O_Projectile_Bolt) && iframes <= 0){
	HP-=Damage_From.Bolt;
	audio_play_sound(SFX_enemy_hit,1,0);
	with(O_Projectile_Bolt){
		instance_destroy();
	}
	iframes+=15;
}

if(place_meeting(x,y,O_Sword) && iframes <= 0){
	audio_play_sound(SFX_enemy_hit,1,0);
	HP-=Damage_From.Sword;
	iframes+=30;
}
if(iframes > 0){
	visible = iframes mod 2;
	iframes--;
}


