// Movimiento de la nave (tu código original)
var pressed_left = keyboard_check(ord("A"));
var pressed_right = keyboard_check(ord("D"));
var xdirection = pressed_right - pressed_left;
var move_speed = 10;
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
    escudo.owner = id;
}


if (keyboard_check_pressed(vk_space)) {
    var bullet = instance_create_layer(x, y, "Instances", Bullet);
    bullet.x = x;
    bullet.y = y;
	bullet.owner = id;
    bullet.speed = 20; 
    
}

if (random(90) < 1) {
    var meteor = instance_create_layer(
        irandom(room_width),  
        irandom(room_height),
        "Instances", 
        Meteorite
    );
    
    meteor.direction = point_direction(meteor.x, meteor.y, x, y);
    meteor.speed = random_range(1, 3); 
    
    // Rotación aleatoria
    meteor.rotation_speed = random_range(-3, 3);
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
