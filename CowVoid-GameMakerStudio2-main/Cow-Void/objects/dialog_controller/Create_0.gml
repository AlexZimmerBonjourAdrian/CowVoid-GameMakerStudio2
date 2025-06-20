// Detener música anterior (menú)
var fade_speed = 0.02;
var snd = snd_musica_menu;
audio_sound_gain(snd, 0, fade_speed);
alarm[0] = room_speed * fade_speed + 1;

// Diálogos
dialogos = [
    {nombre: "Ribs", sprite: spr_per_1, texto: "Escuchen, ustedes tres tienen una misión en Kepler-90"},
    {nombre: "Namdo", sprite: spr_per_2, texto: "¿Comandante, ese lugar no es demasiado hostil para nosotros?"},
    {nombre: "Ribs", sprite: spr_per_1, texto: "Si no es ustedes tendremos que forzar a alguien más."},
    {nombre: "Ribs", sprite: spr_per_1, texto: "Sólo queremos una investigación sobre los oscuros."},
    {nombre: "Ribs", sprite: spr_per_1, texto: "Tienen suerte, van a un lugar conocido, el planeta H."},
    {nombre: "Polo", sprite: spr_per_1, texto: "Que mal nombre."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Si…elegido hace más de un siglo."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Chicharrón estás encargado de estos dos."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Te dejo encargado del chihuahua de Polo."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Al final del día por gente como tu Polo no está en rejas."},
    {nombre: "Chicharrón", sprite: spr_per_2, texto: "La mayoría de adolescentes son rebeldes Ribs."},
    {nombre: "Chicharrón", sprite: spr_per_2, texto: "No podemos encerrarlos por una etapa."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Los que nos critican por internet."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Deberían saber que nosotros les dimos sus libertades."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Poniendo nuestras vidas en juego, nuestro tiempo."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Alejados de nuestras familias…"},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Vas a tener que lidiar con él Chicharron, no yo."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Para ser justo es bastante bueno con su nave."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Polo tú solo tienes una oportunidad"},
    {nombre: "Ribs", sprite: spr_per_2, texto: "Si escucho una queja tuya…"},
    {nombre: "Ribs", sprite: spr_per_2, texto: "El resto de tu vida sería tan miserable que te volvería voluntariamente mudo."},
    {nombre: "Ribs", sprite: spr_per_2, texto: "¿Entendido?"},
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

audio_play_sound(snd_musica_dialog, 1, true); // 1 = prioridad, true = loop
