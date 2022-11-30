/// @description 

States = {
	Spawn : 0,
	Idle : 1,
	Charging_V_Shards : 2,
	Atk_V_Shards : 3,
	Dying : 30,
	Dead : 31
}
state =  States.Spawn;
atk_timer = irandom_range(4,8) * 15;
max_charge_timer = 60;
charge_timer = 60;
spawn_timer = 5;
dying_timer = 150;
image_alpha = .5;
depth = -500;

direction=315;

