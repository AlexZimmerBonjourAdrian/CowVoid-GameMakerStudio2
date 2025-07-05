var ex = random_range(0, room_width);
var e = instance_create_layer(ex, -sprite_height, "Instances", objNaveAlien1);
e.pop_target_y = irandom_range(32, room_height/4);
e.pop_speed = 4;
alarm[1] = room_speed * (1 + irandom_range(10, 12));
