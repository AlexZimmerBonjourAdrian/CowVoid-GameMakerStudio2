// Movimiento de la nave (tu código original)
var pressed_left = keyboard_check(ord("A"));
var pressed_right = keyboard_check(ord("D"));
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
    if (invul_timer <= 0) {
        invulnerable = false;
    }
}


if (keyboard_check_pressed(ord("E"))) {
    if (escudo_activado || escudos <= 0) {
        return;
    }

    escudo_activado = true;
    escudos -= 1;
    escudo_timer = 300; 

    var escudo = instance_create_layer(x, y, "Instances", Escudo);
	escudo.sprite_index = EscudoPolo;
    escudo.owner = id;
}

var center_x = -70 + x + sprite_width * 0.5;
if (keyboard_check_pressed(vk_space)) {
    var bullet = instance_create_layer(center_x, (y-40), "Instances", Bullet);
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
