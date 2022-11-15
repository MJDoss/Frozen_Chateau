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
		if(BButtonPressed()){ state=States.Use_Flask; }
		// if(AButtonPressed()){ }

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
		if(BButtonPressed() && global.PlayerData.flask_count > 0){
			flask_timer = max_flask_timer;
			state=States.Use_Flask; 
			}
		if(AButtonPressed() && (global.PlayerData.stamina >= 10) ){ 
			stamina_wait = max_stamina_wait;
			global.PlayerData.stamina -= stamina_cost;
			iframes = roll_iframes;
			image_index = 0;
			state=States.Roll; 
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
				sprite_index = spr_Ocelotte_roll_side;
				image_xscale = 1;
			break;
			case Facing_states.Right:
				sprite_index = spr_Ocelotte_roll_side;
				image_xscale = -1;
			break;
		}
		if(image_index >= image_number-1){
			state=States.Idle;
		}
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
		speed = 0;
		switch (global.PlayerInventory.equipped){
			case global.PlayerInventory.inventory[0]: // Crossbow
				state = States.Atk_Crossbow;
			break;
			case global.PlayerInventory.inventory[1]: // Bombs
				bomb_timer = max_bomb_timer;
				state = States.Atk_Bombs;				
			break;
			case global.PlayerInventory.inventory[2]: // Fire rod
				state = States.Atk_Firerod;
			break;
		}
	break;
		
	case States.Atk_Crossbow:
		
	break;
	case States.Atk_Bombs:
		if bomb_timer == max_bomb_timer{
			var spawn_dist = 6;
			switch(facing){
				case Facing_states.Up:
					sprite_index = spr_Ocelotte_use_up;
					image_xscale = 1;
					instance_create_depth(x,y-spawn_dist,depth,O_Projectile_Bomb);
				break;
				case Facing_states.Down:
					sprite_index = spr_Ocelotte_use_down;
					image_xscale = 1;
					instance_create_depth(x,y+spawn_dist,depth,O_Projectile_Bomb);
				break;
				case Facing_states.Left:
					sprite_index = spr_Ocelotte_use_side;
					image_xscale = 1;
					instance_create_depth(x-spawn_dist,y,depth,O_Projectile_Bomb);
				break;
				case Facing_states.Right:
					sprite_index = spr_Ocelotte_use_side;
					image_xscale = -1;
					instance_create_depth(x+spawn_dist,y,depth,O_Projectile_Bomb);
				break;
			}
		}
		if(bomb_timer <= 0) state = States.Idle;	
		bomb_timer--;
	break;
	case States.Atk_Firerod:
		
	break;
		
	case States.Use_Flask:
		if(flask_timer <= 0){
			global.PlayerData.flask_count--;
			global.PlayerData.HP += 60;
			state = States.Idle;
			}
		flask_timer--;
	break;

	case States.Rest:
		speed = 0;
		image_speed = 0;
	break;
	
	
	case States.Walk_Door:
	// This state is set from the Chunk object when it is being deactivated.
		switch(facing){
			case Facing_states.Up:
				sprite_index = spr_Ocelotte_walk_up;
				image_xscale = 1;
				direction = 90;
			break;
			case Facing_states.Down:
				sprite_index = spr_Ocelotte_walk_down;
				image_xscale = 1;
				direction = 270;
			break;
			case Facing_states.Left:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = 1;
				direction = 180;
			break;	
			case Facing_states.Right:
				sprite_index = spr_Ocelotte_walk_side;
				image_xscale = -1;
				direction = 0;
			break;		
		}
		speed = move_speed;
		if (door_walk_timer <= 0){
			state = States.Idle;
		}
		door_walk_timer--;
	break;
	
	
		
	case States.Read:
		speed = 0;
		image_speed =0;
	break;
	
	case States.Hurt:
	// Set a speed, and direction and timer based on what you were hit by.
		
	break;
	
	case States.Dead:
		speed = 0;
	break;
		
	default:
		state = States.Idle;
	break;
}

// iframe timer
if(iframes > 0) iframes--;

// Change Equipped item in Y slot
if(LButtonPressed()){
	set_Equipped_Item_Prev();
}
if(RButtonPressed()){
	set_Equipped_Item_Next();
}
// Health check
if(global.PlayerData.HP < 0){
	global.PlayerData.HP = 0;
	state = States.Dead;
} 
if(global.PlayerData.HP > global.PlayerData.max_HP){
	global.PlayerData.HP = global.PlayerData.max_HP;	
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



