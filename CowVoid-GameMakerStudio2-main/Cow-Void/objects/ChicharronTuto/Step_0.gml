
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
    escudo_timer = 300; 

    var escudo = instance_create_layer(x+90, y+90, "Instances", EscudoChicharronTutorial);
    escudo.owner = id;
	escudo.sprite_index = EscudoChicharron
}
var center_x = -15 + x + sprite_width * 0.5;
if (keyboard_check_pressed(vk_enter)) {
    var bullet = instance_create_layer(center_x, y, "Instances", Bullet);
	bullet.owner     = id;
	bullet.direction = 90;
	bullet.speed     = 20;

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
if (y > room_height) y = 0;
else if (y < 0)      y = room_height;
