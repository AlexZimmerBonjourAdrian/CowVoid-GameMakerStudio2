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
var snd = snd_Muerte;
audio_play_sound(snd, 1, true);

// figure out how many steps one loop is and set alarm[1]
var loop_secs  = audio_sound_length(snd)        // length in seconds
alarm[1]       = ceil(loop_secs * room_speed);      // convert to steps

// Diálogos
dialogos = [
    { nombre: "", sprite: SpriteVacio, texto: "Ha muerto Polo" },
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

fade_step = 0.02
fade_out=false