if (!esperando_input) {
        var d = dialogos[global.dialogo_actual];

        if (char_index < string_length(d.texto)) {
            texto_mostrado = d.texto;
            char_index = string_length(d.texto);
            esperando_input = true;
        }
    } else {
        if (dialogo_terminado) {
            contador_transicion++;
        } else {
            if (global.dialogo_actual < array_length(dialogos) - 1) {
                global.dialogo_actual++;
                char_index = 0;
                texto_mostrado = "";
                esperando_input = false;

                var idx_death = 8;
                if (!global.explosion_spawned && global.dialogo_actual == idx_death) {
                    global.explosion_spawned = true;

                    var ex_x = room_width / 2 - 300;
                    var ex_y = room_height / 2 - 300;
                    instance_create_layer(ex_x - 180, ex_y -30, "Instances", Explosion_1);
                    instance_create_layer(ex_x - 325, ex_y - 100, "Instances", AnimacionMuerteNamdo);

                    audio_play_sound(New_Project, 1, false);
                }
            } else {
                fade_out = true;
            }
        }
    }