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
            if (global.dialogo_actual < array_length(dialogos) - 1) {
                global.dialogo_actual++;
                char_index = 0;
                texto_mostrado = "";
                esperando_input = false;
				var idx_death = 8;
				if (!global.explosion_spawned && global.dialogo_actual == idx_death) {
					 global.explosion_spawned = true;

				 // spawn the explosion effect at whatever coords you like:
					 var ex_x = room_width/2 - 300;
					var ex_y = room_height/2 - 300;
					instance_create_layer(ex_x, ex_y, "Instances", Explosion_1);
					instance_create_layer(ex_x -325, ex_y -100, "Instances", AnimacionMuerteNamdo);

    // play its sound once
    audio_play_sound(New_Project, 1, false);
}
            } else {
				fade_out=true;

            }
        }
    }
}
if(fade_out){
	room_goto(SobreviveChicha);
}
audio_stop_sound(snd_musica_dialog);
audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);
