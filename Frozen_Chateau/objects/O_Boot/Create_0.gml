/// @description 

load_settings();

audio_set_master_gain(0, global.settings.master_volume);
//audio_group_set_gain(audiogroup_SFX, global.settings.SFX_volume, 0);
//audio_group_set_gain(audiogroup_music, global.settings.music_volume, 0);

room_goto_next();
