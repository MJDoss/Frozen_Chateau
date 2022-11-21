/// @description 

switch(state){
	case States.Spawn:
		if(spawn_timer==0){
			state = States.Roam;
			roam_timer = 15*irandom_range(1,3);
			direction = irandom_range(0,7) * 45;
		}
		spawn_timer--;
	break;
	
	case States.Roam:
		speed = roam_spd;
		sprite_index = spr_Enemy_Wisp;
		if(roam_timer == 0){
			if(charge_chance == charge_go){
				image_index = 0;
				state = States.Charging;
			}
			direction = irandom_range(0,359);
			charge_chance = irandom_range(0,3);
			roam_timer = irandom_range(1,3) * 15;
		}
		roam_timer--;
		if(HP <= 0) state = States.Dying;
	break;
	
	case States.Charging:
		speed = 0;
		direction = point_direction(x,y, O_Player.x, O_Player.y);
		sprite_index = spr_Enemy_Wisp_Charging;
		if(image_index > image_number-1){
			state = States.Charged;
			audio_play_sound(SFX_fireball,1,0);
		}
		if(HP <= 0){ state = States.Dying;}
	break;
	case States.Charged:
		speed = charge_spd;
		sprite_index = spr_Enemy_Wisp_Charged;
		if(charged_timer <=0){
			charged_timer = max_charged_timer;
			state = States.Roam
			charge_chance = irandom_range(0,3);
		}
		charged_timer--;
		if(HP <= 0) state = States.Dying;
	break;
	
	case States.Dying:
		speed = 0;
		image_speed = 0;
		image_alpha = dying_timer/30;
		if(dying_timer <= 0) state = States.Dead;
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

