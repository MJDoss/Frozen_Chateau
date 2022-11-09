/// @description 

switch(state){
	case States.Spawn:
		speed=0;
		image_speed=0;
		if(spawn_timer ==0) state = States.Idle;
		spawn_timer--;
	case States.Idle:
		speed = 0;
		switch(facing){
			case Facing_states.Up:
				sprite_index = spr_Ocelotte_walk_up;
				image_xscale = 1;
			break;
			case Facing_states.Down:
				sprite_index = spr_Ocelotte_walk_down;
				image_xscale = 1;
			break;
			case Facing_states.Left:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = 1;
			break;	
			case Facing_states.Right:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = -1;
			break;		
		}
		image_index = 0;
		image_speed = 0;
			
		if(AllDirectionalChecks()){ state=States.Walk; }
		if(XButtonPressed()){
			global.PlayerData.stamina -= stamina_cost;
			atk_sword_timer = max_atk_sword_timer;
			state=States.Atk_Sword; }
		if(YButtonPressed()){ state=States.Pre_Atk_Secondary; }
		if(BButtonPressed()){ state=States.Pre_Use_Flask; }
		// if(AButtonPressed()){ }
		if(StartPressed()){ 
			state=States.Inventory;
			inControl = false;
			}
		if(SelectPressed()){ 
			state = States.Map;
			inControl = false;
			}
	break;
		
	case States.Walk:
		speed = move_speed;
		switch(facing){
			case Facing_states.Up:
				sprite_index = spr_Ocelotte_walk_up;
				image_xscale = 1;
			break;
			case Facing_states.Down:
				sprite_index = spr_Ocelotte_walk_down;
				image_xscale = 1;
			break;
			case Facing_states.Left:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = 1;
			break;
			case Facing_states.Right:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = -1;
			break;
		}
		image_speed = 1;		
		if(UpCheck()){
			direction = 90;
			facing = Facing_states.Up;
			}
		if(DownCheck()){
			direction = 270;
			facing = Facing_states.Down;
			}
		if(RightCheck()){
			direction = 0;
			facing = Facing_states.Right;
			}
		if(LeftCheck()){
			direction = 180;
			facing = Facing_states.Left;
			}
		if(UpCheck() && RightCheck()){
			direction = 45;
			}
		if(UpCheck() && LeftCheck()){
			direction = 135;
			}
		if(DownCheck() && RightCheck()){
			direction = 315;
			}
		if(DownCheck() && LeftCheck()){
			direction = 225;
			}
			
		if(!AllDirectionalChecks()){ state=States.Idle; }
		if(XButtonPressed()){
			global.PlayerData.stamina -= stamina_cost;
			atk_sword_timer = max_atk_sword_timer;
			state=States.Atk_Sword; }
		if(YButtonPressed()){ state=States.Pre_Atk_Secondary; }
		if(BButtonPressed()){ state=States.Pre_Use_Flask; }
		if(AButtonPressed() && (global.PlayerData.stamina >= 10) ){ 
			stamina_wait = max_stamina_wait;
			global.PlayerData.stamina -= stamina_cost;
			roll_timer = max_roll_timer;
			state=States.Roll; 
		}
		if(StartPressed()){ 
			state=States.Inventory;
			inControl = false;
			}
		if(SelectPressed()){ 
			state = States.Map;
			inControl = false;
			}
			
	break;
		
	case States.Roll:
		speed = roll_speed;
		switch(facing){
			case Facing_states.Up:
				//sprite_index = spr_Ocelotte_up;
				image_xscale = 1;
			break;
			case Facing_states.Down:
				//sprite_index = spr_Ocelotte_down;
				image_xscale = 1;
			break;
			case Facing_states.Left:
				//sprite_index = spr_Ocelotte_side;
				image_xscale = 1;
			break;
			case Facing_states.Right:
				//sprite_index = spr_Ocelotte_side;
				image_xscale = -1;
			break;
		}
		roll_timer--;
		if(roll_timer <= 0){
			state=States.Idle;
		}
	break;
		
	case States.Grab:
	break;
		
	case States.Atk_Sword:
		speed = 0;
		switch(facing){
			case Facing_states.Up:
				//sprite_index = spr_Ocelotte_Sword_up;
				image_xscale = 1;
			break;
			case Facing_states.Down:
				//sprite_index = spr_Ocelotte_Sword_down;
				image_xscale = 1;
			break;
			case Facing_states.Left:
				//sprite_index = spr_Ocelotte_Sword_side;
				image_xscale = 1;
			break;
			case Facing_states.Right:
				//sprite_index = spr_Ocelotte_Sword_side;
				image_xscale = -1;
			break;
		}
		if(atk_sword_timer <=0) state = States.Idle;
		atk_sword_timer--;
	break;
		
	case States.Pre_Atk_Secondary:
		
	break;
		
	case States.Atk_Secondary:
		
	break;
		
	case States.Use_Flask:
		
	break;
		
	default:
		state=States.Idle;
	break;

	case States.Froze:
		speed = 0;
		image_speed = 0;
	break;
	case States.Walk_Door:
		if (door_walk_timer <= 0){
			inControl = true;
			state = States.Idle;
		}
		door_walk_timer--;
	break;
	case States.Map:
			
		if(SelectPressed() || BButtonPressed()){
			inControl = true;
			state = States.Idle;
		}
	break;
		
	case States.Read:
		speed = 0;
		image_speed =0;
	break;
	
	case States.Dead:
		speed = 0;
	break;
		
	default:
		state = States.Idle;
		inControl = true;
	break;
}

// Health check
if(global.PlayerData.HP < 0){
	global.PlayerData.HP = 0;
	
} 

// Stamina regen section
if (global.PlayerData.stamina < global.PlayerData.max_stamina){
	if(stamina_wait <= 0)global.PlayerData.stamina+= stamina_regen_rate;
	stamina_wait--;
}

if(global.PlayerData.stamina > global.PlayerData.max_stamina){
	global.PlayerData.stamina = global.PlayerData.max_stamina;
}

depth = -y;



