var bullet = instance_create_layer(x, y, "Instances", Bullet);
bullet.x = x;
bullet.y = y;
bullet.owner = id;
bullet.direction = 270;
alarm[1] = room_speed * (2);