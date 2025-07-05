if (!invulnerable  && !escudo_activado) {
    vidas -= 1;
    	audio_play_sound(
    sfx_dolor,  // asset
    1,            // priority
    false,        // no loop
    0.2,         // gain 
    0,            // offset
    1.0           // pitch
);
    // Actualizar variables globales del GameManager
    global.player1_lives = vidas;
    if (vidas <= 0) {
        global.player1_alive = false;
    }
    
    invulnerable = true;
    invul_timer = 60;

    if (vidas <= 0) {
		effect_create_above(ef_firework, obj_player_1_polo.x, obj_player_1_polo.y, 1, c_white);
        		    	audio_play_sound(
    sfx_fireworksmuerte,  // asset
    1,            // priority
    false,        // no loop
    0.2,         // gain 
    0,            // offset
    1.0           // pitch
);
		instance_destroy();
    }
	
	
}

image_blend = c_red;
damaged = true;
timer_dmg = 5;