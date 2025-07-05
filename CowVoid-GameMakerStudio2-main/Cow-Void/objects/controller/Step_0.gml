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

if(global.modoMuerteSubitaDuel) {
	with(Barrera) {
		instance_destroy();
	
	}
}