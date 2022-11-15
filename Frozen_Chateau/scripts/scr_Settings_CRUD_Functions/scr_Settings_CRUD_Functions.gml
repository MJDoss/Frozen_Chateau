// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// CREATE
/*
global.settings = {
	winscale : ini_read_real("prefs", "winscale", 2),
	master_volume : ini_read_real("prefs", "masterVolume", 1),
	SFX_volume : ini_read_real("prefs", "SFXVolume", 0.5),
	music_volume : ini_read_real("prefs", "musicVolume", 0.5)
} 
*/
function load_settings(){
ini_open("Settings.ini");
	global.settings = {
		winscale : ini_read_real("prefs", "winscale", 2),
		master_volume : ini_read_real("prefs", "masterVolume", .5),
		SFX_volume : ini_read_real("prefs", "SFXVolume", 0.5),
		music_volume : ini_read_real("prefs", "musicVolume", 0.5)
	}
ini_close();
}


function save_settings(){
	ini_open("Settings.ini");
	ini_write_real("prefs", "winscale", global.settings.winscale);
	ini_write_real("prefs","masterVolume", global.settings.master_volume);
	ini_write_real("prefs","SFXVolume", global.settings.SFX_volume);
	ini_write_real("prefs","musicVolume", global.settings.music_volume);
	ini_close();
}

