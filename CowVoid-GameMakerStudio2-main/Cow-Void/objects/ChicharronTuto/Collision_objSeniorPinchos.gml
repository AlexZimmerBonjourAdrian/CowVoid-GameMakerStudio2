if (!invulnerable) {

    vidas -= 1;
    global.player1_lives = vidas;

    if (vidas <= 0) {
        global.player1_alive = false;

        effect_create_above(ef_firework, x, y, 1, c_white);
        instance_destroy(); 
    }

    invulnerable = true;
    invul_timer   = 60;
}

image_blend = c_red;
damaged     = true;
timer_dmg   = 5;

with (other) {
    effect_create_above(ef_firework, x, y, 1, c_white);
    instance_destroy();
}
