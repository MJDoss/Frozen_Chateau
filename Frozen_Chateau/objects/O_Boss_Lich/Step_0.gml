/// @description 

switch(state){
	case States.Spawn:
		if(spawn_timer <=0 ){
			state=States.Idle;
			audio_stop_all();
			
			instance_create_depth(x+45,y,-y,O_Boss_Lich_Spirit);
		}
		spawn_timer--;
	break;
	case States.Idle:
		if(iframes<=0){
			if(place_meeting(x,y,O_Sword)){
				HP-=Damage_From.Sword;
				iframes=max_iframes;
				audio_play_sound(SFX_boss_hit,1,0);
			}
			if(place_meeting(x,y,O_Projectile_Bolt)){
				HP-=Damage_From.Bolt;
				iframes=max_iframes;
				with(O_Projectile_Bolt){
					instance_destroy();
				}
				audio_play_sound(SFX_boss_hit,1,0);
			}
			if(place_meeting(x,y,O_Bomb_Explosion)){
				HP-=Damage_From.Bomb;
				iframes=max_iframes+20;
				audio_play_sound(SFX_boss_hit,1,0);
			}
			if(place_meeting(x,y,O_Fireball)){
				HP-=Damage_From.Fire;
				iframes=max_iframes;
				with(O_Fireball){
					instance_destroy();
				}
				audio_play_sound(SFX_boss_hit,1,0);
			}
		}
		if(HP == 0){
			state=States.Dying;
			audio_play_sound(SFX_boss_dies,1,0);
			O_Boss_Lich_Spirit.state = O_Boss_Lich_Spirit.States.Dying;
		}
	break;
	case States.Dying:
		if(dying_timer mod 15 == 0){
			var _x_expl = irandom_range(bbox_left,bbox_right);
			var _y_expl = irandom_range(bbox_top,bbox_bottom);
			instance_create_depth(_x_expl,_y_expl,-_y_expl,O_Bomb_Explosion);
		}
		if(dying_timer==0)state=States.Dead;
		dying_timer--;
	break;
	case States.Dead:
		instance_destroy();
	break;
}


if(HP<0) HP=0;
if(iframes>0) iframes--;
