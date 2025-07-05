if (other.object_index == Bullet) {
    if (!invulnerable && !escudo_activado) {
    vidas -= 1;
        if (vidas <= 0) {
            effect_create_above(ef_firework, x, y, 1, c_white);
            instance_destroy();
							    	audio_play_sound(
    sfx_muertealien,  // asset
    1,            // priority
    false,        // no loop
    0.3,         // gain 
    0,            // offset
    1.0           // pitch
);
    
        } else {
            image_blend  = c_red;
            damaged      = true;
            timer_dmg    = room_speed * 0.1;    
            invulnerable = true;
            invul_timer  = room_speed * 0.5;  
							    	audio_play_sound(
    sfx_doloralien,  // asset
    1,            // priority
    false,        // no loop
    0.3,         // gain 
    0,            // offset
    1.0           // pitch
);
    
        }
    }
    with (other) instance_destroy();
}