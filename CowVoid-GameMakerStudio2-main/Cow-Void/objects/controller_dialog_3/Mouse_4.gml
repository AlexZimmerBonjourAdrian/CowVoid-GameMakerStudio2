if (!esperando_input) {
        var d = dialogos[dialogo_actual];
        if (char_index < string_length(d.texto)) {
            texto_mostrado = d.texto;
            char_index = string_length(d.texto);
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