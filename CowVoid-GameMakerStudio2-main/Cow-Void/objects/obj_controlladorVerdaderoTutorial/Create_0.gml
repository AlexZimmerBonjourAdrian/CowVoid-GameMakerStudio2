font_tutorial = font_add("Arial", 18, false, false, true, true);


// — el resto de tu código tal cual —
global.dialogo_actual    = 0;
global.namdoindicator=false;
esperando_input          = false;
skip_allowed             = false;
skip_activated           = false;
fade_out                 = false;
texto_mostrado           = "";
char_index               = 0;
frame_counter            = 0;
base_velocidad_texto     = 4;
fast_velocidad_texto     = 1;
velocidad_texto_actual   = base_velocidad_texto;
contador_transicion      = 0;
alarm[0]                 = room_speed/2;

dialogos = [
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Polo, debes moverte con W, A, S o D.",                     tipo:"input", controles:["W","A","S","D"] },
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Chicharron muevete con las flechas.",                      tipo:"input", controles:["LEFT","RIGHT","UP","DOWN"] },
	{ nombre:"Ribs", sprite:SpriteVacio, texto:"Hey. Muchachos los estoy viendo desde la torre 331, debo decirles algo",                     tipo:"texto"},
	{ nombre:"Ribs", sprite:SpriteVacio, texto:"No apunten hacia algo a lo que no quieran ver volar en pedazos",                     tipo:"texto"},
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Cierto! Existe el fuego amigo, puedes herir a naves aliadas.", tipo:"texto" },
	{ nombre:"Namdo", sprite:SpriteVacio, texto:"Aunque esto no es posible con las naves en modo entrenamiento", tipo:"texto" },
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Ahora dispara con la barra espaciadora Polo.",                         tipo:"input", controles:["SPACE"] },
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Chicharron dispara con enter.",                          tipo:"input", controles:["ENTER"] },
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Activa tu escudo con E para bloquear balas y proteger al aliado.", tipo:"input", controles:["E"] },
	{ nombre:"Namdo", sprite:SpriteVacio, texto:"Ahora comenzare a disparar para que lo pruebes", tipo:"texto" },
	{ nombre:"Ribs", sprite:SpriteVacio, texto:"Se puede utilizar para bloquear ataques de enemigos cuando un aliado no tiene escudo",                     tipo:"texto"},
    { nombre:"Chicharron", sprite:SpriteVacio, texto:"Yo podria usar un escudo con O para protegerte.",    tipo:"input", controles:["O"] },
	{ nombre:"Chicharron", sprite:SpriteVacio, texto:"Duran 1 segundo al activarse asi que no pases por zonas hostiles con el escudo demasiado tiempo.",tipo:"texto"  },
	{ nombre:"Namdo", sprite:SpriteVacio, texto:"Puede caer mejoras de metralleta o de escudo, intenta tomarlas!", tipo:"texto" },
    { nombre:"Namdo", sprite:SpriteVacio, texto:"Tutorial completado! Si quieren abandonar el tutorial presionen T.", tipo:"input", controles:["T"] }
];

global.dialogo_actual   = 0;
texto_mostrado          = "";
char_index              = 0;
frame_counter           = 0;
velocidad_texto         = 2;
esperando_input         = false;
dialogo_terminado       = false;
contador_transicion     = 0;
fade_out                = false;
generarmejoras=true;


with(instance_create_layer(room_width / 2 - 80 , room_height - sprite_height / 2 - 80, "Instances", CHICHARRONTUTO2)){
	image_xscale = 0.5;	
	image_yscale = 0.5;

};

with (instance_create_layer(room_width/2 + 80,room_height - sprite_height/2 - 80 ,"Instances",PoloTutoPosta)){
    image_xscale = 0.5;
    image_yscale = 0.5;};
	with(instance_create_layer(room_width / 2, 140, "Instances", obj_namdo)){
	image_xscale = 0.26;
	image_yscale = 0.26;
};
