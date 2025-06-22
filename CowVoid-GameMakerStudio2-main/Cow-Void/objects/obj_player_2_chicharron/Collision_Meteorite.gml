if (!invulnerable) {
    vidas -= 1;
    invulnerable = true;
    invul_timer = 60;

    if (vidas <= 0) {
		effect_create_above(ef_firework, x, y, 1, c_white);
        instance_destroy();
    }
	
	
}

image_blend = c_red;
damaged = true;
timer_dmg = 5;