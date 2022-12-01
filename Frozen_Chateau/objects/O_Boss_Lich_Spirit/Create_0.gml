/// @description 

States = {
	Spawn : 0,
	Idle : 1,
	Charging_V_Shards : 2,
	Attack : 3,
	Dying : 30,
	Dead : 31
}
state =  States.Spawn;
chance_atk_timer = irandom_range(6,10) * 15;
max_atk_timer = 15;
atk_timer = 15;
max_charge_timer = 90;
charge_timer = 90;
spawn_timer = 5;
dying_timer = 150;
image_alpha = .5;
depth = -500;

direction=315;

