audio_play_sound(
    sfx_saltodepinchoswarn,  // asset
    1,            // priority
    false,        // no loop
    3,         // gain 
    0,            // offset
    1.0           // pitch
);
blink_timer    = 0;
blink_duration = room_speed * 2;
visible        = true;

alarm[0] = blink_duration;
