persistent = true;

if (!audio_is_playing(snd_musica_menu)) {
    global.musica_id = audio_play_sound(snd_musica_menu, 1, true); // 1 = prioridad, true = loop
}

if (instance_number(menu_config_music_controller) > 1) {
    instance_destroy();
}