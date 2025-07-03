// —— Step Event ——

/// 1) Safely bail if we've run out of dialog
if (global.dialogo_actual >= array_length(dialogos)) {
    return;
}
var d = dialogos[global.dialogo_actual];

/// 2) Letter by letter
if (!esperando_input) {
    frame_counter++;
    if (frame_counter >= velocidad_texto) {
        frame_counter = 0;
        if (char_index < string_length(d.texto)) {
            char_index++;
            texto_mostrado = string_copy(d.texto, 1, char_index);
        } else {
            esperando_input    = true;
            // <-- if you want to use dialogo_terminado, set it here:
            // dialogo_terminado = true;
        }
    }
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        texto_mostrado    = d.texto;
        char_index        = string_length(d.texto);
        esperando_input   = true;
        // dialogo_terminado = true;
    }
}
else {
    // Player hit space/enter to advance
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        // (optional) handle a separate “transition” counter:
        // if (dialogo_terminado) { contador_transicion++; return; }

        // More dialog?
        if (global.dialogo_actual < array_length(dialogos) - 1) {
            global.dialogo_actual++;
            char_index        = 0;
            texto_mostrado    = "";
            esperando_input   = false;

        }
        else {
            // last dialog reached!
           if (!global.jumpscare_spawned) {
    global.jumpscare_spawned = true;
    
    // grab the view's top-left and size:
    var vx = view_xview[0];
    var vy = view_yview[0];
    var vw = view_wview[0];
    var vh = view_hview[0];
    
    // spawn at the view's origin so it fills from (0,0) of the camera:
    var jmp = instance_create_layer(vx, vy, "Instances_1", JumpscareOscuro);
    
    // scale to exactly the view's dimensions:
    jmp.image_xscale = vw / sprite_get_width(jmp.sprite_index);
    jmp.image_yscale = vh / sprite_get_height(jmp.sprite_index);
    
    audio_play_sound(Uff, 1, false);
    alarm[1] = room_speed * 2;
}
        }
    }
}

// cleanup any stray music
audio_stop_sound(snd_musica_dialog);
audio_sound_gain(snd_musica_menu, 0, fade_step);
audio_stop_sound(snd_musica_menu);
