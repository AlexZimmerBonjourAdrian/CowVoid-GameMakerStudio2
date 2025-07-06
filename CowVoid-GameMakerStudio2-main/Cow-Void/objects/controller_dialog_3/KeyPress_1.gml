if (!esperando_input) {

    var d = dialogos[dialogo_actual];
    if (char_index < string_length(d.texto)) {
        texto_mostrado  = d.texto;
        char_index      = string_length(d.texto);
        esperando_input = true;
    }
}
else if (!dialogo_terminado) {

    if (dialogo_actual < array_length(dialogos) - 1) {
        

        if (dialogo_actual == 26) {

            if (instance_exists(ship_polo))  instance_destroy(ship_polo);
            if (instance_exists(ship_chich)) instance_destroy(ship_chich);


            audio_play_sound(
                sfx_CargarPistola,  // asset
                1,                  // priority
                false,              // no loop
                2,                  // gain 
                0,                  // offset
                1.0                 // pitch
            );

            instance_create_layer(
                room_width/2,
                room_height/2 - 100,
                "Instances_3",
                obj_PoloFront
            );


            var spr = instance_create_layer(
                room_width/2,
                room_height - sprite_height/2,
                "Instances",
                obj_Chicharronmirandoapolo
            );
            spr.sprite_index  = Sprite383;
            spr.image_xscale  = 0.5;
            spr.image_yscale  = 0.5;
            global.chich_id   = spr.id;
        }

        dialogo_actual++;
        char_index      = 0;
        texto_mostrado  = "";
        esperando_input = false;
    }
    else {
        dialogo_terminado = true;
        iniciarDisparo    = true;
    }
}