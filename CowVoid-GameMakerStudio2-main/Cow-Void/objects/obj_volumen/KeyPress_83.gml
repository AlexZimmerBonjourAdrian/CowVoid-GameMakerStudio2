// lower by 5%
global.music_volume = clamp(global.music_volume - 0.05, 0, 1);
audio_master_gain(global.music_volume);
show_debug_message("Vol: " + string_format(global.music_volume,1,2));
