if (!invulnerable) {
    vidas -= 1;
    
    // Actualizar variables globales del GameManager
    global.player2_lives = vidas;
    if (vidas <= 0) {
       // global.player2_alive = false;
		global.ultima_room_jugada = PvP;
        //room_goto(MuerteChicharron);
    }
    
    invulnerable = true;
    invul_timer = 60;

	audio_play_sound(
	    sfx_pinchitossalto,  // asset
	    1,            // priority
	    false,        // no loop
	    0.2,         // gain 
	    0,            // offset
	    1.0           // pitch
	);

    if (vidas <= 0) {
		effect_create_above(ef_firework, x, y, 1, c_white);
        instance_destroy();
    }
	
	
}

image_blend = c_red;
damaged = true;
timer_dmg = 5;