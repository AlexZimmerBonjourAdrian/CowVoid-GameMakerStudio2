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
    {nombre: "Ribs", sprite: spr_ribs, texto: "Escuchen, ustedes tres tienen una mision en Kepler-90"},
    {nombre: "Namdo", sprite: spr_namdo, texto: "Creo que ese lugar es demasiado hostil para nosotros"},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Si no es ustedes tendremos que forzar a alguien mas."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Solo queremos una investigacion sobre los oscuros."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Tienen suerte, van a un lugar conocido, el planeta H."},
    {nombre: "Polo", sprite: spr_polo, texto: "Que mal nombre."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Si, elegido hace mas de un siglo."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Chicharron estas encargado de estos dos."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Te dejo encargado del chihuahua de Polo."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Al final del dia por gente como tu Polo no esta en rejas."},
    {nombre: "Chicharron", sprite: spr_chicharron, texto: "La mayoria de adolescentes son rebeldes Ribs."},
    {nombre: "Chicharron", sprite: spr_chicharron, texto: "No podemos encerrarlos por una etapa."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Los que nos critican por internet."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Deberian saber que nosotros les dimos sus libertades."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Poniendo nuestras vidas en juego, nuestro tiempo."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Alejados de nuestras familias…"},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Vas a tener que lidiar con Polo Chicharron, no yo."},
    {nombre: "Ribs", sprite: spr_ribs, texto: "Para ser justo es bastante bueno con su nave."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Polo tienes una oportunidad"},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Si escucho una queja tuya…"},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "El resto de tu vida seria tan miserable que te volveria voluntariamente mudo."},
    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Espero ser claro..."},
    {nombre: "Polo", sprite: spr_polo, texto: "… Entendido."},
	    {nombre: "Ribs", sprite: spr_ribs_enojado, texto: "Por cierto, le dije a Namdo para que te ayude"},
		    {nombre: "Polo", sprite: spr_polo, texto: "… Hmm ok."},
			 {nombre: "Namdo", sprite: spr_namdo, texto: "Vamos a la sala de entrenamiento, te llevo..."},
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
fade_step = 0.02
fade_out=false