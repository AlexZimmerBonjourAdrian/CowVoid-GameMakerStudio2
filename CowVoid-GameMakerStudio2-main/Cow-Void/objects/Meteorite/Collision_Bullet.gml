
if (instance_exists(other)) {
    instance_destroy(other);
}


image_blend = c_red;
alarm[0] = 5;

vida -= 1;

if(vida <= 0) {
	effect_create_above(ef_firework, x, y, 1, c_white);
	if (sprite_index == MeteoritoGrande) {
	sprite_index = MeteoritoMedio;
    instance_copy(true);
	vida = 3;
} else if(sprite_index == MeteoritoMedio) {
	sprite_index = MeteoritoChico;
	instance_copy(true);
	vida = 1;
} else {
	instance_destroy();	
}
}


