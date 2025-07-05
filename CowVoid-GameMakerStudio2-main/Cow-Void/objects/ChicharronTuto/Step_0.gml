
var pressed_left  = keyboard_check(vk_left);  
var pressed_right = keyboard_check(vk_right);
var xdirection    = pressed_right - pressed_left;
var pressed_up    = keyboard_check(vk_up);
var pressed_down  = keyboard_check(vk_down);
var ydirection    = pressed_down - pressed_up;

// unified move speed
var move_speed = 11;


x += xdirection * move_speed;
y += ydirection * move_speed;



if (damaged) {
    timer_dmg -= 1;
    if (timer_dmg <= 0) {
        image_blend = c_white; 
        damaged= false;
    }
}

if (invulnerable) {
    invul_timer -= 1;
    if (invul_timer <= 0) {
        invulnerable = false;
    }
}




if (keyboard_check_pressed(ord("O"))) {
    if (escudo_activado || escudos <= 0) {
        return;
    }

    escudo_activado = true;
    escudos -= 1;
    escudo_timer = 120; 

    var escudo = instance_create_layer(x, y, "Instances", Escudo);
	audio_play_sound(SFX_PlayerShip_Shield3_LoopEnd, 1, false, 0.3);
    escudo.owner = id;
	escudo.sprite_index = EscudoChicharron
}
var center_x = -15 + x + sprite_width * 0.5;

if (shot_cooldown_timer > 0) {
    shot_cooldown_timer -= 1;
    if (shot_cooldown_timer <= 0) {
        shot_count = 0;
    }
}
/*if (keyboard_check_pressed(vk_space) && shot_count < 3 && shot_cooldown_timer <= 0) {
    var center_x = -70 + x + sprite_width * 0.5;
    var bullet   = instance_create_layer(center_x, y-40, "Instances", Bullet);
    bullet.owner     = id;
    bullet.direction = 90;
    bullet.speed     = 20;
    
    shot_count += 1;
    if (shot_count >= 3) {
        shot_cooldown_timer = shot_cooldown_duration;
    }
}
*/
if (keyboard_check_pressed(vk_enter) && shot_count < 3 && shot_cooldown_timer <= 0) {
    var bullet = instance_create_layer(center_x - 45 , y - 45, "Instances", Bullet);
		audio_play_sound(SFX_Turret_Laser_Upgraded1, 1, false, 0.3);
	bullet.owner     = id;
	bullet.direction = 90;
	bullet.speed     = 20;
    shot_count += 1;
    if (shot_count >= 3) {
        shot_cooldown_timer = shot_cooldown_duration;
    }
}

if (escudo_activado) {
    escudo_timer -= 1;

    if (escudo_timer <= 0) {
        escudo_activado = false;
		
    }
}



if (x < 0)                x = 0;
else if (x > room_width) x = room_width;
if (y < 0)                y = 0;
else if (y > room_height) y = room_height;