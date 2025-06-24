// Cuando termina el parpadeo, se crea el enemigo en la misma posición
var pos_y = -sprite_height * 2;
if(y > 10){
	pos_y = room_height;
}
show_debug_message("Posicion del gusano: " + string(pos_y));

instance_create_layer(x, pos_y, "Instances", Gusano);
instance_destroy();