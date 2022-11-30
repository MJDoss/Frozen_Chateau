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
		if(atk_timer==0){
			instance_create_depth(79,144,0,O_V_Shards_Charging);
			state=States.Charging_V_Shards;
		}
		atk_timer--;
	break;
	case States.Charging_V_Shards:
		//direction-=2;
		speed =0;
		
	break;
	case States.Attack:
		//direction-=2;
		speed =0;
		
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


