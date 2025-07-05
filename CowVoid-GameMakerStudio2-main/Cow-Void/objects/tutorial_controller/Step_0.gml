if (bienvenida || titulo || descripcion) {
    tiempo_texto -= 1;
    if (tiempo_texto <= 0) {
        bienvenida = false;
		titulo = false;
        descripcion = false;

    }
}


audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);

if (!game_over) {
    var p1 = instance_exists(PoloTuto);
    var p2 = instance_exists(ChicharronTuto);
    if (!p1 || !p2) {
        game_over = true;
        if      (!p1 &&  p2) alarm[4] = room_speed * 2;
        else if ( p1 && !p2) alarm[5] = room_speed * 2; 
        else                 alarm[3] = room_speed * 2;
    }
}