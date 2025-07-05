if(!other.nodmg && !invulnerable && !escudo_activado) {
	vidas -= 1;
	audio_play_sound(
    sfx_dolor,  // asset
    1,            // priority
    false,        // no loop
    0.2,         // gain 
    0,            // offset
    1.0           // pitch
);
	global.player2_lives = vidas;
	if (vidas <= 0) {
		global.player2_alive = false;
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