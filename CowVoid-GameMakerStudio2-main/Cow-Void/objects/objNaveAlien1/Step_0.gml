if (!has_popped) {
    if (y < pop_target_y) {
        y += pop_speed;
        return;
    } else {
        y = pop_target_y;
        has_popped = true;
    }
}

if (!escudo_activado && escudos > 0) {
    var b_near = instance_nearest(x, y, Bullet);
    if (b_near != noone && point_distance(x, y, b_near.x, b_near.y) < escudo_radius) {
        escudo_activado = true;
        escudo_timer    = escudo_duration;
        escudos        -= 1;
        
       
        with ( instance_create_layer(x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, "Instances", EscudoAlienTutorial) ) {
            owner         = other.id;     
            sprite_index  = EscudoAlien;
        }
    }
}
else if (escudo_activado) {
    escudo_timer -= 1;
    if (escudo_timer <= 0) {
        escudo_activado = false;
    }
}

move_timer += 1;
if (move_timer >= next_move_change) {
    move_timer       = 0;
    next_move_change = irandom_range(room_speed, room_speed * 2);
    var max_jitter   = 2;
    move_dx          = random_range(-max_jitter, max_jitter);
    move_dy          = random_range(-max_jitter, max_jitter);
}

var target = noone;
if (instance_exists(ChicharronTuto) && instance_exists(PoloTuto)) {
    var d1 = point_distance(x, y, ChicharronTuto.x, ChicharronTuto.y);
    var d2 = point_distance(x, y, PoloTuto.x,      PoloTuto.y);
    target = (d1 < d2) ? ChicharronTuto : PoloTuto;
}
else if (instance_exists(ChicharronTuto)) target = ChicharronTuto;
else if (instance_exists(PoloTuto))      target = PoloTuto;

var horiz_speed = 1.5;
var drift_dx    = 0;
if (target != noone) {
    if (x < target.x)      drift_dx =  horiz_speed;
    else if (x > target.x) drift_dx = -horiz_speed;
}
x += drift_dx + move_dx;
y += move_dy;

if (x > room_width)       x = 0;
else if (x < 0)           x = room_width;
if (y < 0)                y = 0;
else if (y > room_height) y = room_height;

if (shot_cooldown_timer > 0) {
    shot_cooldown_timer -= 1;
    if (shot_cooldown_timer <= 0) shot_count = 0;
}

if (target != noone && shot_count < 3 && shot_cooldown_timer <= 0) {

    var base_dir    = point_direction(x, y, target.x, target.y);

    var spray_angle = 15;
    var fire_dir    = (shot_count == 0)
                     ? base_dir
                     : base_dir + random_range(-spray_angle, spray_angle);

    var bx = x + sprite_width*0.5 - 120;
    var by = y + sprite_height*0.5 - 100;
    var b  = instance_create_layer(bx, by, "Instances", BulletAlien);
    b.owner     = id;
    b.direction = fire_dir;
    b.speed     = 6;

    shot_count += 1;
    if (shot_count >= 3) shot_cooldown_timer = shot_cooldown_duration;
}
if (damaged) {
    timer_dmg -= 1;
    if (timer_dmg <= 0) {
        image_blend = c_white;
        damaged     = false;
    }
}
if (invulnerable) {
    invul_timer -= 1;
    if (invul_timer <= 0) {
        invulnerable = false;
    }
}
