blink_timer = 0;
blink_duration = room_speed * 2; // 2 segundos de parpadeo
visible = true;
alarm[0] = blink_duration;

// Step Event
blink_timer += 1;
if (blink_timer mod 10 == 0) {
    visible = !visible;
}