/// @description 

event_inherited();

max_HP = 12;
HP = max_HP;
spd = .4;
damage = 10;

spawn_timer = 5;
roam_timer = 0;
notice_timer = 15;
dying_timer = 30;
iframes = 0;

// States
States = {
	Spawn : 0,
	Roam : 1,
	Pursue : 2,
	Dying : 3,
	Dead : 4
}
state = States.Spawn;

// Damage table
Damage_From = {
	Sword : 2,
	Bolt : 2,
	Bomb : 12,
	Fire : 12
}
