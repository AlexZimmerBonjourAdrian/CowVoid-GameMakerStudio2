// Diálogos en formato: { personaje, sprite, texto }
dialogos = [
    {nombre: "Sans", sprite: spr_per_1, texto: "Ey, humano. ¿Sabías que los esqueletos no tienen corazón?"},
    {nombre: "Papyrus", sprite: spr_per_2, texto: "¡NYEH HEH HEH! ¡YO, EL GRAN PAPYRUS, TE DETENDRÉ!"},
    {nombre: "Sans", sprite: spr_per_1, texto: "Bueno, suerte con eso, hermano."}
];

// Estado del diálogo
dialogo_actual = 0;
texto_mostrado = "";
texto_completo = "";
char_index = 0;

esperando_input = false;
velocidad_texto = 2; // cuántas frames por letra
frame_counter = 0;
