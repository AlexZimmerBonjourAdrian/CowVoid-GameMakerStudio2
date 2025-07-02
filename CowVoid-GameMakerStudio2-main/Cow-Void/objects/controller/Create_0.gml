// Config
ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);

global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);

ini_close();

// Detener música dialogos


// Reproducir música duelo
if (!audio_is_playing(snd_musica_duelo)) {
    audio_play_sound(snd_musica_duelo, 1, true); // 1 = prioridad, true = loop
}

// Crear naves
with(instance_create_layer(room_width / 2, room_height - sprite_height / 2 - 80, "Instances", obj_player_1_polo)){
	image_xscale = 0.5;	
	image_yscale = 0.5;

};
with(instance_create_layer(room_width / 2, 80, "Instances", obj_player_2_chicharron)){
	image_xscale = 0.5;
	image_yscale = 0.5;
};

alarm[0] = room_speed * 2; // GUSANOS
alarm[1] = room_speed * 2; // ASTEROIDES
alarm[2] = room_speed * 2; // AGUJERO DE GUSANO
