view_enabled       = true;
view_visible[0]    = true;
view_wview[0]      = 1920;
view_hview[0]      = 1080;
view_wport[0]      = 1920;
view_hport[0]      = 1080;
ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);

global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);

ini_close();

show_debug_message("Vol: " + string(global.music_volume));