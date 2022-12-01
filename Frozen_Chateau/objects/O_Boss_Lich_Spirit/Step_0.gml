/// @description 

switch(state){
	case States.Spawn:
		if(spawn_timer<=0){
			state = States.Idle;
		}
		spawn_timer--;
	break;
	case States.Idle:
		direction-=2;
		speed =2;
		if(chance_atk_timer==0){
			instance_create_depth(80,144,0,O_V_Shards_Charging);
			instance_create_depth(80+64,144,0,O_V_Shards_Charging);
			instance_create_depth(80+128,144,0,O_V_Shards_Charging);
			image_index = 0;
			state=States.Charging_V_Shards;
			audio_play_sound(SFX_boss_charge,1,0);
		}
		chance_atk_timer--;
	break;
	case States.Charging_V_Shards:
		speed =0;
		if(charge_timer==0){
			charge_timer = max_charge_timer;
			audio_play_sound(SFX_boss_shoot,1,0);
			state=States.Attack;
		}
		charge_timer--;
	break;
	
	case States.Attack:
		speed =0;
		if(atk_timer==0){
			chance_atk_timer = irandom_range(6,10) * 15;
			atk_timer = max_atk_timer;
			state = States.Idle;
		}
		atk_timer--;
	break;
	
	case States.Dying:
		speed =0;
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


