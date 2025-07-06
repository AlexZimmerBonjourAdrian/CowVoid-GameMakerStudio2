if (random(45) < 1) {
    var meteor = instance_create_layer(
        irandom(room_width),  
        irandom(room_height),
        "Instances", 
        Meteorite
    );
    
    meteor.direction = point_direction(meteor.x, meteor.y, x, y);
    meteor.speed = random_range(1, 3); 
    
    // Rotación aleatoria
    meteor.rotation_speed = random_range(-3, 3);
}
audio_stop_sound(snd_musica_dialog);
audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);

if (room == Duel && !global.inicioPelea) {
    global.countdown -= 1;
    if (global.countdown <= 0) {
        global.inicioPelea = true;
    }
}

if (room == Duel) {
	
	 var rondaTerminada = false;

    if (!instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
        global.hayEmpate = true;
        global.hayGanador = false;
        global.ganadorEs = noone;
        rondaTerminada = true;

    } else if (!instance_exists(obj_player_1_polo) && instance_exists(obj_player_2_chicharron)) {

        global.hayEmpate = false;
        global.hayGanador = true;
        global.ganadorEs = obj_player_2_chicharron;
        global.rondas_ganadas_j2 += 1;
        rondaTerminada = true;

    } else if (instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
        // Gana Jugador 1
        global.hayEmpate = false;
        global.hayGanador = true;
        global.ganadorEs = obj_player_1_polo;
        global.rondas_ganadas_j1 += 1;
        rondaTerminada = true;
    }

    // Si la ronda terminó, avanzar
    if (rondaTerminada) {
        global.ronda_actual += 1;

        // ¿Alguien ya ganó 2 rondas?
        if (global.rondas_ganadas_j1 == 2) {
            global.mensajeFinal = "¡El Jugador 1 ha ganado el duelo!";
            room_goto(FinalDuel);

        } else if (global.rondas_ganadas_j2 == 2) {
            global.mensajeFinal = "¡El Jugador 2 ha ganado el duelo!";
            room_goto(FinalDuel);

        } else {
            // No hay ganador aún, ir a pantalla de entre rondas
            room_goto(Duel);
        }
    }
}


if(global.modoMuerteSubitaDuel) {
	with(Barrera) {
		instance_destroy();
	
	}
}