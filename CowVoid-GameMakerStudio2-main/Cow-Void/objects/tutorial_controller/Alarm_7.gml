
var warnX = random_range(0, room_width);

var warnY = room_height - 64;


var w = instance_create_layer(warnX, warnY, "Instances", obj_saltogusano);
w.blink_timer    = 0;
w.blink_duration = room_speed * 2; 
w.spawnX         = warnX;
w.alarm[0]       = w.blink_duration;
alarm[7] = room_speed * irandom_range(3, 6);
