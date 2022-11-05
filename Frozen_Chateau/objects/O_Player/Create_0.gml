/// @description 

States = { // States when player has control of the character.
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
	Inventory : 33
}

Facing_states = {
	Up : 90,
	Right : 0,
	Left : 180,
	Down : 270
}
facing = Facing_states.Down;

door_walk_timer = 0;
max_atk_sword_time = 60;
atk_sword_time = 0;
max_roll_timer = 30;
roll_timer = 0;

move_speed = 1.3;
roll_speed = 3;

//Stamina costs
stamina_cost = 10;

state = States.Idle;
prev_state = state;
speed = 0;
direction = 270;
inControl = true;
