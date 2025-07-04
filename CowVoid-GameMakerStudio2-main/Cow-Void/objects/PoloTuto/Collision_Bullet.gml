if(!other.nodmg && !invulnerable) {
	vidas -= 1;
	
	// Actualizar variables globales del GameManager
	global.player1_lives = vidas;
	if (vidas <= 0) {
		global.player1_alive = false;
	}
	
	invulnerable = true;
    invul_timer = 60;

    if (vidas <= 0) {
				effect_create_above(ef_firework, x, y, 1, c_white);
        instance_destroy();
		
    }
	
	with (other) instance_destroy();
	image_blend = c_red;
	damaged = true;
	timer_dmg = 5;
}

