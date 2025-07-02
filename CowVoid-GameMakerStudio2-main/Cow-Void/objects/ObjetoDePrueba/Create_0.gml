// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

// Diálogos
dialogos = [
    { nombre: "Chicharron", sprite: chichapng, texto: "¿Me escuchan?" },
    { nombre: "Polo",        sprite: spr_per_1,  texto: "Te escucho." },
    { nombre: "Namdo",       sprite: spr_per_2,  texto: "Sargento, no puedo." },
    { nombre: "Chicharron", sprite: chichapng,   texto: "Pero si nosotros-" },
    { nombre: "Namdo",       sprite: spr_per_2,  texto: "Mi nave ha recibido demasiados impactos." },
    { nombre: "Polo",        sprite: spr_per_1,  texto: "Chicha, podemos volver, me parece mejor." },
    { nombre: "Chicharroon", sprite: chichapng,   texto: "Si volvemos ahora Ribs no va a estar nada feliz." },
    { nombre: "Polo",        sprite: spr_per_1,  texto: "Pero…" },
    { nombre: "",            sprite: SpriteVacio,         texto: "(Namdo muere)" },
    { nombre: "Polo",        sprite: spr_per_1,  texto: "Chicharron-" },
    { nombre: "Chicharron", sprite: chichapng,   texto: "Ah…" },
    { nombre: "Chicharron", sprite: chichapng,   texto: "Solo puedo mirar hacia delante." },
    { nombre: "Chicharron", sprite: chichapng,   texto: "Puede salir todo bien si peleamos juntos." },
    { nombre: "Chicharron", sprite: chichapng,   texto: "Pelea Polo, observa como lo hago." },
    { nombre: "Polo",        sprite: spr_per_1,  texto: "Entendido." }
];

// Estado del diálogo
dialogo_actual = 0;
texto_mostrado = "";
char_index = 0;
dialogo_terminado = false;
esperando_input = false;
velocidad_texto = 2;
frame_counter = 0;

// Música
audio_play_sound(snd_musica_dialog, 1, true); // 1 = prioridad, true = loop
fade_step = 0.02
fade_out=false