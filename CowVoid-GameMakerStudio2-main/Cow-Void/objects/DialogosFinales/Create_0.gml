// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

dialogos = [
    { nombre: "Chicharron", sprite: chichapng, texto: "Estamos cerca de H." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Chicharron." },
    { nombre: "Chicharron", sprite: chichapng, texto: "Si?" },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Quiero que seas honesto. Cuando nos atacaron los oscuros?" },
    { nombre: "Chicharron", sprite: chichapng, texto: "Siempre que entramos en su territorio." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Nosotros los provocamos." },
    { nombre: "Chicharron", sprite: chichapng, texto: "No..." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Nunca han salido de Kepler 90 a buscarnos." },
    { nombre: "Chicharron", sprite: chichapng, texto: "Polo eres tan ingenuo." },
    { nombre: "Chicharron", sprite: chichapng, texto: "El universo nos odia, debemos conquistarlo con fuerza militar." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Los oscuros tienen vidas normales y no quieren ser molestados." },
    { nombre: "Chicharron", sprite: chichapng, texto: "Confias demasiado facil, eres considerado demasiado facil." },
    { nombre: "Chicharron", sprite: chichapng, texto: "No quiero ser enfrentado con estos dilemas ahora." },
    { nombre: "Chicharron", sprite: chichapng, texto: "Quiero la libertad y la paz para los humanos." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Y el resto de especies?" },
    { nombre: "Chicharron", sprite: chichapng, texto: "No confio en nadie, menos en otras especies." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "..." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Quiza tengas razon, pero no quiero vivir en el mundo que vos ves." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "No sirve de nada ser buenito de manera arbitraria." },
    { nombre: "Chicharron", sprite: chichapng, texto: "Polo? Te ayude, te saque del pozo." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Piensa en todos los oscuros." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "La mayoria simplemente esta viviendo sus vidas igual que la persona promedio." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Para que venga un sociopata a terminar con ellos." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Tienes la mente corrupta de pasar tu vida en esta organizacion criminal." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Eres peor que cualquier oscuro." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "No hay misericordia para los de tu tipo." },
    { nombre: "",            sprite: SpriteVacio,  texto: "(Apunta)" },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Sorpresa." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Tengo un lanza pasteles instalado en esta nave." },
    { nombre: "Polo",        sprite: spr_per_1, texto: "Quieres uno Chicharron?" },
    { nombre: "",            sprite: SpriteVacio,  texto: "(Dispara y es bloqueado por un escudo)" }
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
global.musica_id = audio_play_sound(charlafinal, 1, true);

fade_step = 0.02
fade_out=false