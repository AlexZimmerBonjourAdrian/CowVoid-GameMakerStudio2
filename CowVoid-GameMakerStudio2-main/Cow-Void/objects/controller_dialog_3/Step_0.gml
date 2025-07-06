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

    var poloInst  = instance_nearest(room_width/2, room_height/2 - 100, obj_PoloFront);
    var chichInst = instance_nearest(room_width/2, room_height - sprite_height/2, obj_Chicharronmirandoapolo);

    var b = instance_create_layer(poloInst.x, poloInst.y, "Instances", obj_Bullet);
    with (b) {
        image_xscale = image_yscale = 0.3;             
        direction    = point_direction(x, y, chichInst.x, chichInst.y);
        speed        = 8;
        image_angle  = direction;
        target_id    = chichInst;                 
    }
}
