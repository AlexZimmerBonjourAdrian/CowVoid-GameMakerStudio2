if (y <= targetY) {
    y       = targetY;
    vspeed  = 0;
    gravity = 0;
}

if (y > room_height + sprite_get_bbox_bottom(Seniorpinch)/2) {
	
    instance_destroy();
	
}

/*if (y <= targetY) {
    effect_create_above(ef_firework, x, y, 1, c_white);
    instance_destroy();
}

if (y > room_height + sprite_get_bbox_bottom(Gusano_2)/2) {
    effect_create_above(ef_firework, x, y, 1, c_white);
    instance_destroy();
}
*/