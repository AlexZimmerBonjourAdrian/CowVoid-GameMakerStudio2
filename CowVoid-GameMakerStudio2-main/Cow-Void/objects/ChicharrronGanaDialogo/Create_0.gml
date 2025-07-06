view_enabled       = true;
view_visible[0]    = true;
view_wview[0]      = 1920;
view_hview[0]      = 1080;
view_wport[0]      = 1920;
view_hport[0]      = 1080;

// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

// Diálogos
dialogos = [
    { nombre: "", sprite: SpriteVacio, texto: "" },
    { nombre: "Chicharron", sprite: spr_chicharron, texto: "Ribs" },
		{ nombre: "Ribs", sprite: spr_ribs, texto: "Has abandonado?." },
		    { nombre: "Chicharron", sprite: spr_chicharron, texto: "Polo y Namdo han muerto" },
					{ nombre: "Ribs", sprite: spr_ribs, texto: "Veo." },
								{ nombre: "Ribs", sprite: spr_ribs, texto: "Es un lugar demasiado hostil. Debemos esperar antes de volver" },
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