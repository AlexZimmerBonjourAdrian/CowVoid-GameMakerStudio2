var d = dialogos[dialogo_actual];

// Mostrar texto letra por letra
if (!esperando_input) {
    frame_counter++;

    if (frame_counter >= velocidad_texto) {
        frame_counter = 0;

        if (char_index < string_length(d.texto)) {
            char_index++;
            texto_mostrado = string_copy(d.texto, 1, char_index);
        } else {
            esperando_input = true; // esperar confirmación para pasar
        }
    }

    // Si el jugador quiere saltear el texto:
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        if (char_index < string_length(d.texto)) {
            texto_mostrado = d.texto;
            char_index = string_length(d.texto);
            esperando_input = true;
        }
    }
} else {
    // Si ya terminó de mostrar, esperar para avanzar
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        dialogo_actual++;
        char_index = 0;
        texto_mostrado = "";
        esperando_input = false;
		
		if (dialogo_actual >= array_length(dialogos)) {
		    // Fin del diálogo
		    instance_destroy();
		    room_goto(PvP);
		}
    }
}
