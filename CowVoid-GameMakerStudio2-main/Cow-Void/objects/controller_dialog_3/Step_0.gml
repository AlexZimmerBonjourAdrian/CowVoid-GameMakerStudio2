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

    var any_key = false;
    for (var k = 0; k < 256; k++) {
        if (keyboard_check_pressed(k)) {
            any_key = true;
            break;
        }
    }
    var input_avanzar = any_key || mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);

    if (input_avanzar) {
        if (char_index < string_length(d.texto)) {
            texto_mostrado = d.texto;
            char_index = string_length(d.texto);
            esperando_input = true;
        }
    }
} else {
    var any_key = false;
    for (var k = 0; k < 256; k++) {
        if (keyboard_check_pressed(k)) {
            any_key = true;
            break;
        }
    }
    var input_avanzar = any_key || mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);

    if (input_avanzar) {
        if (dialogo_terminado) {
            contador_transicion++;
        } else {
            if (dialogo_actual < array_length(dialogos) - 1) {
                dialogo_actual++;
                char_index = 0;
                texto_mostrado = "";
                esperando_input = false;
            } else {
                fade_out = true;
            }
        }
    }
}
if(fade_out){
	audio_stop_sound(charlafinal)
	room_goto(PvP);
		
}