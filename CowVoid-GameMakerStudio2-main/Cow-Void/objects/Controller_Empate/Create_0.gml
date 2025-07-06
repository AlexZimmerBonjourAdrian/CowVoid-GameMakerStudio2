view_enabled       = true;
view_visible[0]    = true;
view_wview[0]      = 1920;
view_hview[0]      = 1080;
view_wport[0]      = 1920;
view_hport[0]      = 1080;

/// Create Event of Controller_Empate

// 1) Fade out any previous menu music
fade_step = 0.02;
audio_sound_gain(snd_musica_menu, 0, fade_step);
// (Optional) if you handle Alarm[0] to finish stopping menu music:
// alarm[0] = room_speed * fade_step + 1;

// 2) Define all your dialogs
dialogos = [
    { nombre: "",    sprite: SpriteVacio, texto: "" },
    { nombre: "",    sprite: SpriteVacio, texto: "Oh" },
    { nombre: "",    sprite: SpriteVacio, texto: "Ideas" },
    { nombre: "",    sprite: SpriteVacio, texto: "Destruyen vidas" },
    { nombre: "",    sprite: SpriteVacio, texto: "Unos contra otros" },
    { nombre: "",    sprite: SpriteVacio, texto: "Nadie cree que su propio juicio es errado" },
    { nombre: "",    sprite: SpriteVacio, texto: "Todos creen tener la razon" },
    { nombre: "",    sprite: SpriteVacio, texto: "Justificados en arruinar vidas" },
    { nombre: "",    sprite: SpriteVacio, texto: "Pero solo si se encontrara una forma de convivir" },
    { nombre: "",    sprite: SpriteVacio, texto: "Se puede alcanzar el exito individual" },
    { nombre: "",    sprite: SpriteVacio, texto: "Oh. Justificados en arruinar vidas" },
    { nombre: "",    sprite: SpriteVacio, texto: "No hay necesidad de matar o torturar" },
    { nombre: "",    sprite: SpriteVacio, texto: "En esta vida..." },
    { nombre: "",    sprite: SpriteVacio, texto: "Estoy pretendiendo" },
    { nombre: "",    sprite: SpriteVacio, texto: "Soy solo un diminuto momento en la existencia" },
    { nombre: "",    sprite: SpriteVacio, texto: "Y hay pocas cosas que me motiven" },
    { nombre: "",    sprite: SpriteVacio, texto: "Entiendo todo en el universo" },
    { nombre: "Ribs", sprite: spr_ribs_enojado,      texto: "DEJEN DE HACER RUIDO" },
    { nombre: "Ribs", sprite: spr_ribs_enojado,      texto: "SON LAS 3 DE LA MADRUGADA" },
    { nombre: "",    sprite: SpriteVacio, texto: "Ugh" },
    { nombre: "",    sprite: SpriteVacio, texto: "Tan dificil balancear mi naturaleza mala y mi naturaleza buena" },
    { nombre: "Ribs", sprite: spr_ribs,      texto: "Ese sonido es muy grave" },
    { nombre: "Ribs", sprite: spr_ribs,      texto: "No le conozco pero puede evitar hacer tanto ruido?" },
    { nombre: "",    sprite: SpriteVacio, texto: "No tengo razones para cooperar con usted" },
    { nombre: "Ribs", sprite: spr_ribs,      texto: "?" },
    { nombre: "",    sprite: SpriteVacio, texto: "Siempre estuvimos un paso adelante" },
    { nombre: "",    sprite: SpriteVacio, texto: "Nunca vas a salirte con la tuya conmigo" },
    { nombre: "",    sprite: SpriteVacio, texto: "Voy mas lejos que cualquiera que conozcas" },
    { nombre: "Ribs", sprite: spr_ribs,      texto: "Me estas empezando a dar miedo, ni siquiera te puedo ver" },
    { nombre: "",    sprite: SpriteVacio, texto: "Jeje, no somos seres muy luminosos que digamos" },
    { nombre: "",    sprite: SpriteVacio, texto: "" }
];

// 3) Initialize control flags and counters
global.dialogo_actual    = 0;
global.explosion_spawned = false;
global.jumpscare_spawned = false;

dialogo_terminado       = false;
contador_transicion     = 0;

texto_mostrado          = "";
char_index              = 0;
esperando_input         = false;
velocidad_texto         = 2;
frame_counter           = 0;
fade_out                = false;

// 4) Start your dialogue music
audio_play_sound(snd_musica_dialog, 1, true);
