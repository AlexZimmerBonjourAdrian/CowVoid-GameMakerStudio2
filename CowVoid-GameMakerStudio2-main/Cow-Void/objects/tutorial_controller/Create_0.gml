// Config

//CONTADOR PARA FINALIZAR EL JUEGO
alarm[6] = room_speed * 160; 


ini_open("config.ini");

var fullscreen_val = ini_read_real("video", "fullscreen", 0);
window_set_fullscreen(fullscreen_val == 1);
game_over    = false;
target_room  = noone;
global.music_volume = ini_read_real("audio", "music_volume", 0.5);
audio_master_gain(global.music_volume);
global.ultima_room_jugada = Supervivencia;

ini_close();

// Detener música dialogos
audio_stop_sound(snd_musica_dialog);

// Reproducir música duelo
if (!audio_is_playing(snd_Primer_aventura)) {
   audio_play_sound(snd_Primer_aventura, 1, true);
}

// Crear naves
with(instance_create_layer(room_width / 2 - 80 , room_height - sprite_height / 2 - 80, "Instances", PoloTuto)){
	image_xscale = 0.5;	
	image_yscale = 0.5;

};

with (instance_create_layer(room_width/2 + 80,room_height - sprite_height/2 - 80 ,"Instances",ChicharronTuto)){
    image_xscale = 0.5;
    image_yscale = 0.5;};

bienvenida = false;
bienvenida_a_mostrar = "";
titulo = false;
titulo_a_mostrar = "";
descripcion = false;
descripcion_a_mostrar = "";
tiempo_texto = 0;

pinchitosjumpiness = false;
alarm[9] = room_speed * 1 + random (3); // ALARM METEORITO
alarm[10] = room_speed *(1 + random(5));  //ALARM MINA ESPACIAL
alarm[1] = room_speed * (20 + random(8)) ; // NAVE ALIEN SOLDADO
alarm[7] = room_speed * (1 + random(8)); // PINCHITO
alarm[11] = room_speed *(20 + random(10)); // ALIEN KAMI
alarm[8] = room_speed * 50; //METRALLETA

finalizando=false;
