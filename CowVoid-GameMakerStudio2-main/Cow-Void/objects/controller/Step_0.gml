

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

if (!global.inicioPelea) {
    global.countdown -= 1;
    if (global.countdown <= 0) {
        global.inicioPelea = true;
    }
}

if (room == PvP) {
    if (!instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
      
        room_goto(Empate);
    } else if (!instance_exists(obj_player_1_polo) && instance_exists(obj_player_2_chicharron)) {
		
        room_goto(GanaChicha);
    } else if (instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
        room_goto(GanaPolo);
    }
}

if(room == Duel) {
	if(!instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
		global.hayEmpate = true;
		global.hayGanador = false;
		global.ganadorEs = obj_player_1_polo;
		global.mensaje = "EMPATE!";
		room_goto(FinalPVP);
	} else if(!instance_exists(obj_player_1_polo) && instance_exists(obj_player_2_chicharron)) {
		global.hayEmpate = false;
		global.hayGanador = true;
		global.ganadorEs = obj_player_2_chicharron;
				global.mensaje = "GANA JUGADOR 2!";
		room_goto(FinalPVP);
	} else if(instance_exists(obj_player_1_polo) && !instance_exists(obj_player_2_chicharron)) {
		global.hayEmpate = false;
		global.hayGanador = true;
		global.mensaje = "GANA JUGADOR 1!"
		global.ganadorEs = obj_player_1_polo;
		room_goto(FinalPVP);
	}
}

if(global.modoMuerteSubitaDuel) {
	with(Barrera) {
		instance_destroy();
	
	}
}