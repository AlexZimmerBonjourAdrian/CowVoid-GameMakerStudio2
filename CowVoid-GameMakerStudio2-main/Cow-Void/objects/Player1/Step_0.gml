// Movimiento de la nave (tu código original)
var pressed_left = keyboard_check(ord("A"));
var pressed_right = keyboard_check(ord("D"));
var xdirection = pressed_right - pressed_left;
var move_speed = 10;
x = x + (xdirection * move_speed);

move_wrap(true, true, 0);

if (keyboard_check(vk_space)) {
    var bullet = instance_create_layer(x, y, "Instances", Bullet);
    bullet.x = x - 70;
    bullet.y = y - 70;
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
    meteor.speed = 10; 
    
    meteor.rotation_speed = random_range(-3, 3);
}

if (instance_number(blackhole_obj) == 0) {
    var bh = instance_create_layer(x, y - 40, "Instances", blackhole_obj);

    bh.alarm[0] = 150;
}

