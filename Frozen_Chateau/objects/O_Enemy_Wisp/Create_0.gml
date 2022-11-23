/// @description 

event_inherited();
image_speed=1;

max_HP = 5;
HP = max_HP;
roam_spd = 1;
charge_spd = 5;
damage = 12;

spawn_timer = 5;
roam_timer = 0;
charge_go = 1;
charge_chance = irandom_range(0,2);
max_charged_timer = 80;
charged_timer = max_charged_timer;
dying_timer = 30;
iframes = 0;

// States
States = {
	Spawn : 0,
	Roam : 1,
	Charging : 2,
	Charged : 3,
	Dying : 4,
	Dead : 5
}
state = States.Spawn;

// Damage table
Damage_From = {
	Sword : 10,
	Bolt : 10,
	Bomb : 10,
	Fire : 10
}
