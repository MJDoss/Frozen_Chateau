/// @description 

States = { // States when player has control of the character.
	Spawn : 255,
	Idle : 0,
	Walk : 1,
	Roll : 2,
	Grab : 3,
	Atk_Sword : 5,
	Pre_Atk_Secondary : 6,
	Atk_Secondary : 7,
	Use_Flask : 9,
	
	
	// States for when player doesn't have control
	Froze : 30,
	Walk_Door : 31,
	Map : 32,
	Inventory : 33,
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

iframe_timer = 0;
door_walk_timer = 0;
max_atk_sword_timer = 60;
atk_sword_timer = 0;
max_roll_timer = 30;
roll_timer = 0;
max_flask_timer = 40;
flask_timer = 0;
spawn_timer = 20;

move_speed = 1.3;
roll_speed = 3;

//Stamina costs
stamina_cost = 10;
max_stamina_wait = 60;
stamina_wait = 0;
stamina_regen_rate = 0.3;

state = States.Idle;
prev_state = state;
speed = 0;
direction = 270;

function Hurt_Speed(_damage){
	return _damage/10;
}
function Hurt_IFrames(_damage){
	return floor(_damage/3);
}


