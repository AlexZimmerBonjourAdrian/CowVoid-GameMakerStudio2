// Alarm[7] – show a warning at the bottom and remember its X

// 1) pick a random X in the room
var warnX = random_range(0, room_width);

// 2) place the warning a fixed distance above the bottom
//    (here 64px up; tweak to taste)
var warnY = room_height - 64;

// 3) create the warning and pass it the X
var w = instance_create_layer(warnX, warnY, "Instances", obj_saltogusano);
w.blink_timer    = 0;
w.blink_duration = room_speed * 2;  // 2s blink
w.spawnX         = warnX;
w.alarm[0]       = w.blink_duration;

// 4) reschedule Alarm 7 for 3–6s later
alarm[7] = room_speed * irandom_range(3, 6);
