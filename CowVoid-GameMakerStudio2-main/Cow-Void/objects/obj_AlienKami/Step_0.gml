
var p1 = instance_nearest(x, y, ChicharronTuto);
var p2 = instance_nearest(x, y, PoloTuto);
var target = noone;

if (p1 != noone && p2 != noone) {
    if (point_distance(x, y, p1.x, p1.y) < point_distance(x, y, p2.x, p2.y))
        target = p1;
    else
        target = p2;
}
else if (p1 != noone) target = p1;
else if (p2 != noone) target = p2;

if (target != noone) {
    var dir        = point_direction(x, y, target.x, target.y);
    var move_speed = 2;
    vw = lengthdir_x(move_speed, dir);
    vh = lengthdir_y(move_speed, dir);       
	hspeed = vw;
    vspeed = vh;
    image_angle = (dir + 90) mod 360; 
} 
else {
    vw = 0; vh = 0;
	hspeed = 0; vspeed = 0;
}

x += vw;
y += vh;

if (target != noone && place_meeting(x, y, target.object_index)) {

    with (target) {
        instance_create_layer(x, y, "Instances", obj_megaExplosionDeMina);
        instance_destroy();
    }

    instance_create_layer(x, y, "Instances", obj_megaExplosionDeMina);
    instance_destroy();
}

var b = instance_place(x, y, Bullet);
if (b != noone) {
    with (b) instance_destroy();
    instance_create_layer(x, y, "Instances", obj_megaExplosionDeMina);
    instance_destroy();
}

if (x < -sprite_width 
 || x >  room_width  + sprite_width 
 || y < -sprite_height
 || y >  room_height + sprite_height) {
    instance_destroy();
}
