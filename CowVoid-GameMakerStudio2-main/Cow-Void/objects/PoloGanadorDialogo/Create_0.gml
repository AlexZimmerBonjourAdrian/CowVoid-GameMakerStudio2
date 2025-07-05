// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;
audio_stop_sound(snd_Muerte);
// Diálogos
dialogos = [
    { nombre: "", sprite: SpriteVacio, texto: "" },
    { nombre: "Polo", sprite: spr_polo, texto: "Comandante Ribs, hemos llegado al planeta objetivo" },
    { nombre: "Polo", sprite: spr_polo, texto: "Todos han muerto, es un lugar demasiado hostil" },
	{ nombre: "Polo", sprite: spr_polo, texto: "Deberíamos posponer indefinidamente una guerra con los oscuros." }
];

global.dialogo_actual    = 0;
global.explosion_spawned = false;
texto_mostrado = "";
char_index = 0;
dialogo_terminado = false;
esperando_input = false;
velocidad_texto = 2;
frame_counter = 0;

// Música
audio_play_sound(snd_musica_dialog, 1, true); 
fade_step = 0.02
fade_out=false