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

// Cuenta regresiva antes de pelea
if ((room == Duel || room == PvP) && !global.inicioPelea) {
    global.countdown -= 1;
    if (global.countdown <= 0) {
        global.inicioPelea = true;
    }
}

if ((room == Duel || room == PvP) && global.inicioPelea) {
    var j1_muerto = !instance_exists(obj_player_1_polo);
    var j2_muerto = !instance_exists(obj_player_2_chicharron);

    if (j1_muerto && j2_muerto) {
        global.hayEmpate = true;
        global.ganadorEs = noone;
        global.mensaje = "¡EMPATE!";
        global.rondaEnCurso++;
    }
    else if (j1_muerto) {
        global.hayEmpate = false;
        global.ganadorEs = obj_player_2_chicharron;
        global.rondasGanadasJ2++;
        global.mensaje = "¡GANA JUGADOR 2!";
        global.rondaEnCurso++;
    }
    else if (j2_muerto) {
        global.hayEmpate = false;
        global.ganadorEs = obj_player_1_polo;
        global.rondasGanadasJ1++;
        global.mensaje = "¡GANA JUGADOR 1!";
        global.rondaEnCurso++;
    }

    var esFinal = global.rondasGanadasJ1 == 2 || global.rondasGanadasJ2 == 2 || global.rondaEnCurso > 3;

    if (esFinal) {
        if (room == Duel) {
            room_goto(FinalPVP);
        } else {
			
			if(j1_muerto) {
				room_goto(GanaPolo);
			} else {
				room_goto(GanaChicha)
			}
        }
    } else if (j1_muerto || j2_muerto || (j1_muerto && j2_muerto)) {
       
        if (room == Duel) {
            room_goto(Duel);
        } else {
            room_goto(PvP);
        }
    }
}

// Muerte súbita: eliminar barreras
if (global.modoMuerteSubitaDuel) {
    with (Barrera) {
        instance_destroy();
    }
}
