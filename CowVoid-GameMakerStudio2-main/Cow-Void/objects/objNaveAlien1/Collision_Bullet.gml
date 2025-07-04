if (other.object_index == Bullet) {
    if (!invulnerable) {
        vidas -= 1;
        if (vidas <= 0) {
            effect_create_above(ef_firework, x, y, 1, c_white);
            instance_destroy();
        } else {
            image_blend  = c_red;
            damaged      = true;
            timer_dmg    = room_speed * 0.1;    
            invulnerable = true;
            invul_timer  = room_speed * 0.5;   
        }
    }
    with (other) instance_destroy();
}