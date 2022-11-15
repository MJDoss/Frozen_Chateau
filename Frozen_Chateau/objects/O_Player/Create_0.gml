/// @description 

States = { // States when player has control of the character.
	Spawn : 255,
	Idle : 0,
	Walk : 1,
	Roll : 2,
	Grab : 3,
	Atk_Sword : 5,
	Pre_Atk_Secondary : 6,
	Atk_Crossbow : 7,
	Atk_Bombs : 8,
	Atk_Firerod : 9,
	Use_Flask : 10,
	
	
	// States for when player doesn't have control
	Rest : 30,
	Walk_Door : 31,
	//Map : 32,
	//Inventory : 33,
	Hurt : 34,
	Read : 35,
	Dead : 36
}

Facing_states = {
	Up : 90,
	Right : 0,
	Left : 180,
	Down : 270
}
facing = Facing_states.Down;

iframes = 0;
door_walk_timer = 0;
max_atk_sword_timer = 60;
atk_sword_timer = 0;
//max_roll_timer = 29;
roll_iframes = 20;
max_flask_timer = 30;
flask_timer = 0;
spawn_timer = 20;
max_bomb_timer = 15;
bomb_timer = 0;
max_cb_timer = 15;
cb_timer = 0;
max_use_equipped_timer = 30;
use_equipped_timer = 0;

max_hurt_timer = 20;
hurt_timer =0;


move_speed = 1.3;
roll_speed = 3.2;

//Stamina costs
stamina_cost = 10;
max_stamina_wait = 60;
stamina_wait = 0;
stamina_regen_rate = 0.3;

state = States.Idle;
//prev_state = state;
speed = 0;
direction = 270;

function Hurt_Speed(_damage){
	return _damage/10;
}
function Hurt_IFrames(_damage){
	return floor(_damage/2);
}
function has_iframes(){
	return (iframes > 0);
}

