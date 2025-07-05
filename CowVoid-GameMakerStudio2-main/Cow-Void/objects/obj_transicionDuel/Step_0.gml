x += velocidad;

// Fade out de la música
if (audio_is_playing(snd_musica_menu)) {
    var volumen_actual = audio_sound_get_gain(snd_musica_menu);
    var nuevo_volumen = max(0, volumen_actual - fade_step);
    audio_sound_gain(snd_musica_menu, nuevo_volumen, 0);

    if (nuevo_volumen <= 0) {
        audio_stop_sound(snd_musica_menu);
    }
}


if (x >= room_width + 400) {
    room_goto(Duel);
	instance_destroy();
}
