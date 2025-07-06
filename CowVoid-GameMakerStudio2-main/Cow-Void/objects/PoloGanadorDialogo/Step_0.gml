// Evitar acceder fuera de rango
if (global.dialogo_actual < array_length(dialogos)) {
    var d = dialogos[global.dialogo_actual];
} else {
    exit;
}

// Mostrar letra por letra
if (!esperando_input) {
    frame_counter++;
    if (frame_counter >= velocidad_texto) {
        frame_counter = 0;

        if (char_index < string_length(d.texto)) {
            char_index++;
            texto_mostrado = string_copy(d.texto, 1, char_index);
        } else {
            esperando_input = true;
        }
    }
}

if (fade_out) {
    room_goto(Creditos);
}

audio_stop_sound(snd_Muerte);
audio_stop_sound(snd_musica_dialog);
audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);
