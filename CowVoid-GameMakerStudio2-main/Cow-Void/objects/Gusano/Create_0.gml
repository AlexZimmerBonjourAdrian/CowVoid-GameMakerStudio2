sprite_index = spr_gusano_cabeza

// Cantidad de partes del cuerpo al comenzar
segment_count = 6;
segment_spacing = 12;
head_history = [];
max_history = segment_count * segment_spacing;

// Lista de posiciones de segmentos
segments = [];

// Inicializar segmentos detrás de la cabeza
for (var i = 0; i < segment_count; i++) {
    array_push(segments, [x, y - ((i + 1) * 32)]); // separados 16 px
}

vw = 2;
vh = 6;
zigzag_timer = 0;
state = "zigzag"; // puede cambiar a "bouncing" y luego "leaving"
bounces = -1;
max_bounces = 4;
dir = 1;
entrance_time = 1 * room_speed;

if (y >= room_height / 2){
	dir = -1;
}