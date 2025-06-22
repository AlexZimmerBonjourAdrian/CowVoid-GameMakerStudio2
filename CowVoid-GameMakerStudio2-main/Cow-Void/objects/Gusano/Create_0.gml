sprite_index = spr_gusano_cabeza

// Cantidad de partes del cuerpo al comenzar
segment_count = 6;
segment_spacing = 32;
head_history = [];
max_history = segment_count * segment_spacing;

// Lista de posiciones de segmentos
segments = [];

// Inicializar segmentos detrás de la cabeza
for (var i = 0; i < segment_count; i++) {
    array_push(segments, [x, y - ((i + 1) * 32)]); // separados 16 px
}

// Sprite principal (cabeza)

vw = 6;
vh = 2;
zigzag_amplitude = 9; // control del zig-zag horizontal
zigzag_timer = 0;
state = "zigzag"; // puede cambiar a "bouncing" y luego "leaving"
bounces = 0;
max_bounces = 4;
dir = 0;
