// blink setup
blink_timer    = 0;
blink_duration = room_speed * 2;
visible        = true;

// after blink_duration ticks, Alarm[0] will fire
alarm[0] = blink_duration;
