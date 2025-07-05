// Evitar acceder fuera de rango
if (dialogo_actual < array_length(dialogos)) {
    var d = dialogos[dialogo_actual];
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

// Fade out
if (fade_out) {
    audio_stop_sound(charlafinal);
    room_goto(PvP);
}
