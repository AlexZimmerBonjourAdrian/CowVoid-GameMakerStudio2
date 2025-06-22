if (state == "zigzag") {
	if(y < 0){
		dir = -1;
	}else if (y > room_height - sprite_height){
		dir = 1;
	}
	
    y -= vh * dir;
    x += sin(degtorad(zigzag_timer)) * vw;
    zigzag_timer += 10;
	
    if (y == 0 || y == room_height - sprite_height) {
        state = "bouncing";
    }
}
else if (state == "bouncing") {
    y += dir * vh;
    if (y < 0 || y > room_height - sprite_height) {
        dir *= -1;
        bounces += 1;
    }

    x += sin(degtorad(zigzag_timer)) * vw;
    zigzag_timer += 10;

    if (bounces >= max_bounces) {
        state = "leaving";
    }
}
else if (state == "leaving") {
    y += vh * 6 * dir;
    if (y > room_height || y < 0) {
        instance_destroy();
    }
}

array_insert(head_history, 0, [x, y]);

if (array_length(head_history) > max_history) {
    array_resize(head_history, max_history);
}