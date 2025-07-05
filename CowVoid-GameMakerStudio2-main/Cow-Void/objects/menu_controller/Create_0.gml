// Config
if (!file_exists("config.ini")) {
    ini_open("config.ini");

    ini_write_real("video", "fullscreen", 0); // 0 = ventana
    ini_write_real("audio", "music_volume", 0.5);

    ini_close();
}

ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);

global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);

ini_close();

global.ultima_room_jugada = noone;