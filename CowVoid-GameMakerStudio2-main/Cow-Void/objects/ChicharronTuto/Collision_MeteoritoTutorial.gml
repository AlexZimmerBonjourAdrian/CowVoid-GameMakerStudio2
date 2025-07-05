if (!invulnerable) {
    vidas -= 1;
    

    
    invulnerable = true;
    invul_timer = 60;

  if (vidas <= 0) {
		effect_create_above(ef_firework, x, y, 1, c_white);
				    	audio_play_sound(
    sfx_fireworksmuerte,  // asset
    1,            // priority
    false,        // no loop
    0.6,         // gain 
    0,            // offset
    1.0           // pitch
);
        instance_destroy();
		
    }else{	audio_play_sound(
    sfx_dolor,  // asset
    1,            // priority
    false,        // no loop
    0.2,         // gain 
    0,            // offset
    1.0           // pitch
);}
	
	
	
}

image_blend = c_red;
damaged = true;
timer_dmg = 5;
