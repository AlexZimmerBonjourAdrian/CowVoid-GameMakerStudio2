// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

// Diálogos
dialogos = [
    { nombre: "", sprite: SpriteVacio, texto: "" },
    { nombre: "Chicharron", sprite: spr_chicharron, texto: "Hmm" },
    { nombre: "Chicharron", sprite: spr_chicharron, texto: "Ribs, supongo que tenias razon" },
	{ nombre: "Ribs", sprite: spr_ribs, texto: "No me gusta decirlo, pero." },
	{ nombre: "Ribs", sprite: spr_ribs, texto: "Si. Te lo dije." }
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