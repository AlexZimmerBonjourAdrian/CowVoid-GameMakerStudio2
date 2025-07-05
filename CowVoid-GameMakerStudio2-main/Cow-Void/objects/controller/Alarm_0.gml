// CREAR GUSANOS

// Decide aleatoriamente si la advertencia aparece arriba o abajo
var pos_y = choose(40, room_height - 80);
var pos_x = random(room_width);
instance_create_layer(pos_x, pos_y, "Instances", obj_agujero_gusano_warning);
show_debug_message("Llamada de la alarma 0: " + string(pos_y));

// Programa el próximo ciclo (puede ser cada 6-8 segundos por ejemplo)
alarm[0] = room_speed * 6 + random(2);