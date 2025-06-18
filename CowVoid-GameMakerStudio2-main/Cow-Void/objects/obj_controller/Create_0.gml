// Config
ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);

global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);

ini_close();

alarm[0] = room_speed * 2; // GUSANOS
alarm[1] = room_speed * 2; // ASTEROIDES
alarm[2] = room_speed * 2; // AGUJERO DE GUSANO
