/// @description 

ini_open("config.ini");

global.settings = {
	winscale : ini_read_real("prefs", "winscale", 2),
	master_volume : ini_read_real("prefs", "masterVolume", .5),
	SFX_volume : ini_read_real("prefs", "SFXVolume", 0.5),
	music_volume : ini_read_real("prefs", "musicVolume", 0.5)
}

ini_close();

audio_set_master_gain(0, global.settings.master_volume);
//audio_group_set_gain(audiogroup_SFX, global.settings.SFX_volume, 0);
//audio_group_set_gain(audiogroup_music, global.settings.music_volume, 0);

room_goto_next();
