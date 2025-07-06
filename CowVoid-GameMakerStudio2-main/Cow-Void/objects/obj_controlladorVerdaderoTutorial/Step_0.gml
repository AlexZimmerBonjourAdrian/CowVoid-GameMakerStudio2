
if (global.dialogo_actual >= array_length(dialogos)) {
    fade_out = true;
}


if (fade_out) {
    contador_transicion++;
    if (contador_transicion >= room_speed) {
        room_goto(Supervivencia);
    }
    exit;
}
if(generarmejoras && global.dialogo_actual==13){
instance_create_layer(room_width/2 , room_height/2 , "Instances", obj_mejorastutorial);
generarmejoras=false;
}
if( global.dialogo_actual==6){
	global.namdoindicator=true;
	}

var d = dialogos[global.dialogo_actual];

if (!esperando_input) {
    // Permitir aceleración tras el delay del alarm[0]
    if (d.tipo == "texto" && skip_allowed && keyboard_check_pressed(vk_anykey) && !skip_activated) {
        skip_activated         = true;
        velocidad_texto_actual = fast_velocidad_texto;
    }
    // Avanzar la escritura carácter a carácter
    frame_counter++;
    if (frame_counter >= velocidad_texto_actual) {
        frame_counter = 0;
        if (char_index < string_length(d.texto)) {
            char_index++;
            texto_mostrado = string_copy(d.texto, 1, char_index);
        } else {
            esperando_input          = true;
            skip_activated           = false;
            velocidad_texto_actual   = base_velocidad_texto;
        }
    }
}
// 5) Validar avance
else {
    var avanzar = false;

    if (d.tipo == "texto") {
        // ANY KEY avanza una vez que el texto está completo
        if (keyboard_check_pressed(vk_anykey)) avanzar = true;
    } else {
        // Solo avanzan con las teclas concretas en d.controles
        for (var i = 0; i < array_length(d.controles); i++) {
            var k = d.controles[i];
            if ((k == "SPACE"  && keyboard_check_pressed(vk_space))  ||
                (k == "ENTER"  && keyboard_check_pressed(vk_enter))  ||
                (k == "LEFT"   && keyboard_check_pressed(vk_left))   ||
                (k == "RIGHT"  && keyboard_check_pressed(vk_right))  ||
                (k == "UP"     && keyboard_check_pressed(vk_up))     ||
                (k == "DOWN"   && keyboard_check_pressed(vk_down))   ||
                (string_length(k)==1 && keyboard_check_pressed(ord(k)))
               ) {
                avanzar = true;
                break;
            }
        }
    }

    if (avanzar) {
        global.dialogo_actual++;
        // Reset de máquina de escribir y flags
        texto_mostrado           = "";
        char_index               = 0;
        frame_counter            = 0;
        esperando_input          = false;
        skip_activated           = false;
        velocidad_texto_actual   = base_velocidad_texto;
        skip_allowed             = false;
        // Reprogramar delay para el próximo texto
        alarm[0]                 = room_speed / 2;
    }
}

// 6) Alarm[0]: una vez cumplido el delay, permitimos el ANY KEY en diálogos de tipo texto
// (Pega esto en tu Alarm[0] Event)
/// skip_allowed = true;
