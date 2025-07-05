if (!esperando_input) {
        if (char_index < string_length(dialogos[dialogo_actual].texto)) {
            texto_mostrado = dialogos[dialogo_actual].texto;
            char_index = string_length(dialogos[dialogo_actual].texto);
            esperando_input = true;
        }
    } else {
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