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
    //room_goto(PvP);
}
if (iniciarDisparo) {
    iniciarDisparo = false;

    alarm[1] = room_speed *4;
    
    var poloInst  = instance_nearest(room_width/2, room_height/2 - 100, obj_PoloFront);
    var chichInst = instance_nearest(room_width/2, room_height - sprite_height/2, obj_Chicharronmirandoapolo);

    var b = instance_create_layer(poloInst.x, poloInst.y+80, "Instances_2", obj_Bullet);
    with (b) {
        image_xscale = image_yscale = 0.5;
        direction    = point_direction(x, y, chichInst.x+60, chichInst.y);
        speed        = 1;
        image_angle  = direction;
        target_id    = chichInst;  
    }
}
