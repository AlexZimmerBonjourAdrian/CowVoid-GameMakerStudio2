var idx_death = 8;

//if (global.dialogo_actual == idx_death && !global.explosion_spawned) {
    global.explosion_spawned = true;

    instance_create_layer(x, y, "Instances", explo);

    audio_play_sound(muerenamdo, 1, false);

    instance_destroy();
//}