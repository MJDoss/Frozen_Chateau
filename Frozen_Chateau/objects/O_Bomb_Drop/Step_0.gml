/// @description 

if(place_meeting(x,y,O_Player)){
	global.PlayerInventory.inventory[1].ammo += 3;
	if(global.PlayerInventory.inventory[1].ammo > global.PlayerInventory.inventory[1].max_ammo) global.PlayerInventory.inventory[1].ammo = global.PlayerInventory.inventory[1].max_ammo;
	audio_play_sound(SFX_bomb,1,0);
	instance_destroy();
}
