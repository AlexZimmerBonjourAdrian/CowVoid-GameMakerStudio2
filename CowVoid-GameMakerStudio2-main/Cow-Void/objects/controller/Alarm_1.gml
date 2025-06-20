// CREAR ASTEROIDES

// Lado izquierdo o derecho
var spawn_side = choose(0, 1);
var x_pos = spawn_side == 0 ? -sprite_width : room_width + sprite_width;
var y_pos = random(room_height);

instance_create_layer(spawn_side, y_pos, "Instances", Meteorite);

// Repetir cada 1-3 segundos
alarm[1] = irandom_range(room_speed * 1, room_speed * 3);