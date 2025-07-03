if (bienvenida || titulo || descripcion) {
    tiempo_texto -= 1;
    if (tiempo_texto <= 0) {
        bienvenida = false;
		titulo = false;
        descripcion = false;

    }
}
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

//alarm[0] = room_speed * 2; // GUSANOS
alarm[1] = room_speed * 2; // gus
alarm[2] = room_speed * 2; // AGUJERO DE GUSANO

audio_sound_gain(snd_musica_menu, 0, 0.02);
audio_stop_sound(snd_musica_menu);