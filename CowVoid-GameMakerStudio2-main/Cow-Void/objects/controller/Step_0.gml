// Meteoritos
if (random(45) < 1) {
    var meteor = instance_create_layer(
        irandom(room_width),  
        irandom(room_height),
        "Instances", 
        Meteorite
    );
    
    meteor.direction = point_direction(meteor.x, meteor.y, x, y);
    meteor.speed = random_range(1, 3); 
    meteor.rotation_speed = random_range(-3, 3);
}

// Audio
audio_stop_sound(snd_musica_dialog);
audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);

// Inicio cuenta regresiva antes de pelea
if (room == Duel && !global.inicioPelea) {
    global.countdown -= 1;
    if (global.countdown <= 0) {
        global.inicioPelea = true;
    }
}

// Lógica de final de ronda
if (room == Duel && global.inicioPelea) {
    if (!instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
        global.hayEmpate = true;
        global.hayGanador = false;
        global.ganadorEs = noone;
        global.mensaje = "¡EMPATE!";
        global.ronda_actual += 1;
    }
    else if (!instance_exists(obj_player_1_polo)) {
        global.hayEmpate = false;
        global.hayGanador = true;
        global.ganadorEs = obj_player_2_chicharron;
        global.mensaje = "¡GANA JUGADOR 2!";
    }
    else if (!instance_exists(obj_player_2_chicharron)) {
        global.hayEmpate = false;
        global.hayGanador = true;
        global.ganadorEs = obj_player_1_polo;
        global.mensaje = "¡GANA JUGADOR 1!";
    }

  
}

// Eliminar barreras si hay muerte súbita
if (global.modoMuerteSubitaDuel) {
    with (Barrera) {
        instance_destroy();
    }
}
