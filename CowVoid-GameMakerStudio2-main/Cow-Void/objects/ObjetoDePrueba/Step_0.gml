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

    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        if (char_index < string_length(d.texto)) {
            texto_mostrado = d.texto;
            char_index = string_length(d.texto);
            esperando_input = true;
        }
    }
} else {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        if (dialogo_terminado) {
            contador_transicion++;
        } else {
            if (dialogo_actual < array_length(dialogos) - 1) {
                dialogo_actual++;
                char_index = 0;
                texto_mostrado = "";
                esperando_input = false;
            } else {
				fade_out=true;

            }
        }
    }
}
if(fade_out){
	room_goto(Dialogs3);
		
}