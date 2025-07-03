// Config
ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);

global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);

ini_close();

// Detener música dialogos
audio_stop_sound(snd_musica_dialog);

// Reproducir música duelo
if (!audio_is_playing(snd_Primer_aventura)) {
   audio_play_sound(snd_Primer_aventura, 1, true);
}

// Crear naves
with(instance_create_layer(room_width / 2 + 80, room_height - sprite_height / 2 - 80, "Instances", PoloTuto)){
	image_xscale = 0.5;	
	image_yscale = 0.5;

};

with (instance_create_layer(room_width/2 + 80,room_height - sprite_height/2 - 200,"Instances",ChicharronTuto)){
    image_xscale = 0.5;
    image_yscale = 0.5;};

alarm[0] = room_speed * 2; // BIENVENIDA

bienvenida = false;
bienvenida_a_mostrar = "";
titulo = false;
titulo_a_mostrar = "";
descripcion = false;
descripcion_a_mostrar = "";
tiempo_texto = 0;

//alarm[0] = room_speed * 2; // GUSANOS
alarm[1] = room_speed * 2; // ASTEROIDES
alarm[2] = room_speed * 2; // AGUJERO DE GUSANO
// CREAR GUSANOS

