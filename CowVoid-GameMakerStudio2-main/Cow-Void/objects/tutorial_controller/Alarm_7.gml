if (!global.finalizando) {
    var warnX = random_range(0, room_width);
    var warnY = room_height - 96;
    var w = instance_create_layer(warnX, warnY, "Instances", obj_saltogusano);
    with (w) {
        blink_timer    = 0;
        blink_duration = room_speed * 2;
        spawnX         = warnX;
        alarm[0]       = blink_duration;
    }

    pinchitosJumpiness = (random(1) < 0.4);

    if (pinchitosJumpiness) {

        alarm[7] = room_speed * random_range(0, 3);
    } else {

        alarm[7] = room_speed * random_range(7, 12);
    }
}