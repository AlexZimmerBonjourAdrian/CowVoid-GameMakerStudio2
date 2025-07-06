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
    { nombre: "Chicharron", sprite: spr_chicharron, texto: "¿Me escuchan?" },
    { nombre: "Polo",        sprite: spr_polo,  texto: "Te escucho." },
    { nombre: "Namdo",       sprite: spr_namdo,  texto: "Sargento, no puedo." },
    { nombre: "Chicharron", sprite: spr_chicharron,   texto: "Pero si nosotros-" },
    { nombre: "Namdo",       sprite: spr_namdo,  texto: "Mi nave ha recibido demasiados impactos." },
    { nombre: "Polo",        sprite: spr_polo,  texto: "Chicha, podemos volver, me parece mejor." },
    { nombre: "Chicharroon", sprite: spr_chicharron,   texto: "Si volvemos ahora Ribs no va a estar nada feliz." },
    { nombre: "Polo",        sprite: spr_polo,  texto: "Pero…" },
    { nombre: "",            sprite: SpriteVacio,         texto: "" },
    { nombre: "Polo",        sprite: spr_polo,  texto: "Chicharron-" },
    { nombre: "Chicharron", sprite: spr_chicharron,   texto: "Ah…" },
    { nombre: "Chicharron", sprite: spr_chicharron,   texto: "Solo puedo mirar hacia delante." },
    { nombre: "Chicharron", sprite: spr_chicharron,   texto: "Puede salir todo bien si peleamos juntos." },
    { nombre: "Chicharron", sprite: spr_chicharron,   texto: "Pelea Polo, observa como lo hago." },
    { nombre: "Polo",        sprite: spr_polo,  texto: "Entendido." }
];

global.dialogo_actual    = 0;
global.explosion_spawned = false;
texto_mostrado = "";
char_index = 0;
dialogo_terminado = false;
esperando_input = false;
velocidad_texto = 2;
frame_counter = 0;

alarm[1] = room_speed * 1;
alarm[2] = room_speed * 9 + random(7); 

// Música
audio_play_sound(snd_musica_dialog, 1, true); // 1 = prioridad, true = loop
fade_step = 0.02
fade_out=false