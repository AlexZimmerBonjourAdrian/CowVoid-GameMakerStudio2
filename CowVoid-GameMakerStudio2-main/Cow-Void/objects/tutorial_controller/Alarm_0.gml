if(!finalizando){
var pos_y = choose(10, room_height - sprite_height - 74);
var pos_x = random(room_width);
instance_create_layer(pos_x, pos_y, "Instances", obj_gusano_warning);
show_debug_message("Llamada de la alarma 0: " + string(pos_y));
alarm[0] = room_speed * 8;}