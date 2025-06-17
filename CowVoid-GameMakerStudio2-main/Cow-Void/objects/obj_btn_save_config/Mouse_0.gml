var full = 0;

if(window_get_fullscreen()) {
	full = 1;	
}

ini_open("config.ini");
ini_write_real("audio", "music_volume", global.music_volume);
ini_write_real("video", "fullscreen", full);
ini_close();

show_debug_message("Vol: " + string(global.music_volume));


room_goto(Menu);