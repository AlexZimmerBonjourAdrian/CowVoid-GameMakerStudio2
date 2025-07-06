if (room == Duel && !global.inicioPelea) {
    return;
}

// Movimiento con flechas direccionales (en lugar de WASD)
var pressed_left = keyboard_check(vk_left);  // ←
var pressed_right = keyboard_check(vk_right); // →
var xdirection = pressed_right - pressed_left;
var move_speed = 30;
x = x + (xdirection * move_speed);





if (damaged) {
    timer_dmg -= 1;
    if (timer_dmg <= 0) {
        image_blend = c_white; 
        damaged= false;
    }
}

if (invulnerable) {
    invul_timer -= 1;
	image_blend = make_color_rgb(100, 100, 100);
	
    if (invul_timer <= 0) {
        invulnerable = false;
		image_blend = c_white;
    }
}




if (keyboard_check_pressed(ord("O"))) {
    if (escudo_activado || escudos <= 0) {
        return;
    }

    escudo_activado = true;
    escudos -= 1;
    escudo_timer = 300; 

    var escudo = instance_create_layer(x, y, "Instances", Escudo);
    escudo.owner = id;
	escudo.sprite_index = EscudoChicharron
	audio_play_sound(SFX_PlayerShip_Shield3_LoopEnd, 1, false, 0.3);
}

if (shot_cooldown_timer > 0) {
    shot_cooldown_timer -= 1;
    if (shot_cooldown_timer <= 0) {
        shot_count = 0;
    }
}
if (!rapid_fire) {
	if (keyboard_check_pressed(vk_enter) && shot_count < 4 && shot_cooldown_timer <= 0) {
	    var bullet = instance_create_layer(x, y, "Instances", Bullet);
	    bullet.x = x;
	    bullet.y = y;
		bullet.owner = id;
		bullet.dir = "down";
    
	    bullet.direction = 270;
		audio_play_sound(SFX_Turret_Laser1, 1, false, 0.3);
		shot_count += 1;
	    if (shot_count >= 4) {
	        shot_cooldown_timer = shot_cooldown_duration;
	    }
	}
}else{
	rapid_fire_timer -= 1;
    rapid_fire_shot_timer += 1;
    if (rapid_fire_shot_timer >= room_speed * 0.1) {
        rapid_fire_shot_timer = 0;
		var bullet = instance_create_layer(x, y, "Instances", Bullet);
	    bullet.x = x;
	    bullet.y = y;
		bullet.owner = id;
		bullet.dir = "down";
    
	    bullet.direction = 270;
		audio_play_sound(SFX_Turret_Laser1, 1, false, 0.3);
    }
    if (rapid_fire_timer <= 0) {
        rapid_fire = false;
    }
}

if (escudo_activado) {
    escudo_timer -= 1;

    if (escudo_timer <= 0) {
        escudo_activado = false;
		
    }
}



if (x > room_width) {
    x = 0;
}
// Si sale por la izquierda, aparece por la derecha
else if (x < 0) {
    x = room_width;
}


if(global.modoMuerteSubitaDuel) {
	escudo_activado = false;
	vidas = 1;
	escudos = 0;
}