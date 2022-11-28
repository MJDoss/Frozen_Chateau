/// @description 

event_inherited();

States = {
	Spawn : 0,
	Closing : 1,
	Closed : 2,
	Opening : 3,
	Open : 4
}
state = States.Spawn;
spawn_timer = 25;

