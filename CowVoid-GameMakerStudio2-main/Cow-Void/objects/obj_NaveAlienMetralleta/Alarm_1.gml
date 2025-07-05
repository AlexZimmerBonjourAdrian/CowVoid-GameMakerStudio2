    var bx = x + sprite_width*0.5 + 12;
    var by = y + sprite_height*0.5;
    var b  = instance_create_layer(bx, by, "Instances", BulletAlien);
    b.owner     = id;
    b.direction = point_direction(x, y, target.x, target.y);
    b.speed     = 6;
    shot_count += 1;
    if (shot_count >= 3) shot_cooldown_timer = shot_cooldown_duration;