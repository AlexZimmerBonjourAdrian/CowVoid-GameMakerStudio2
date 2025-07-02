// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

// Diálogos
dialogos = [
    {nombre: "Ribs", sprite: ribs1, texto: "Escuchen, ustedes tres tienen una mision en Kepler-90"},
    {nombre: "Namdo", sprite: spr_per_2, texto: "¿Comandante, ese lugar no es demasiado hostil para nosotros?"},
    {nombre: "Ribs", sprite: ribs1, texto: "Si no es ustedes tendremos que forzar a alguien mas."},
    {nombre: "Ribs", sprite: ribs1, texto: "Solo queremos una investigacion sobre los oscuros."},
    {nombre: "Ribs", sprite: ribs1, texto: "Tienen suerte, van a un lugar conocido, el planeta H."},
    {nombre: "Polo", sprite: spr_per_1, texto: "Que mal nombre."},
    {nombre: "Ribs", sprite: ribs1, texto: "Si, elegido hace mas de un siglo."},
    {nombre: "Ribs", sprite: ribs1, texto: "Chicharron estas encargado de estos dos."},
    {nombre: "Ribs", sprite: ribs1, texto: "Te dejo encargado del chihuahua de Polo."},
    {nombre: "Ribs", sprite: ribs1, texto: "Al final del dia por gente como tu Polo no esta en rejas."},
    {nombre: "Chicharron", sprite: chichapng, texto: "La mayoria de adolescentes son rebeldes Ribs."},
    {nombre: "Chicharron", sprite: chichapng, texto: "No podemos encerrarlos por una etapa."},
    {nombre: "Ribs", sprite: ribs2, texto: "Los que nos critican por internet."},
    {nombre: "Ribs", sprite: ribs2, texto: "Deberian saber que nosotros les dimos sus libertades."},
    {nombre: "Ribs", sprite: ribs2, texto: "Poniendo nuestras vidas en juego, nuestro tiempo."},
    {nombre: "Ribs", sprite: ribs2, texto: "Alejados de nuestras familias…"},
    {nombre: "Ribs", sprite: ribs1, texto: "Vas a tener que lidiar con Polo Chicharron, no yo."},
    {nombre: "Ribs", sprite: ribs1, texto: "Para ser justo es bastante bueno con su nave."},
    {nombre: "Ribs", sprite: ribs2, texto: "Polo tienes una oportunidad"},
    {nombre: "Ribs", sprite: ribs2, texto: "Si escucho una queja tuya…"},
    {nombre: "Ribs", sprite: ribs2, texto: "El resto de tu vida seria tan miserable que te volveria voluntariamente mudo."},
    {nombre: "Ribs", sprite: ribs2, texto: "Espero ser claro..."},
    {nombre: "Polo", sprite: spr_per_1, texto: "… Entendido."}
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