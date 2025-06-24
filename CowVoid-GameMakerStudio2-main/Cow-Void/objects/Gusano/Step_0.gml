if (state == "zigzag") {
	if(entrance_time > 0){
		entrance_time = entrance_time - 1;
	}else if (y > room_height - sprite_height / 2 || y < 0 - vh){
		dir = dir * -1;
		bounces = bounces + 1;
		show_debug_message("sumando " + string(y));
	}
	
	 if (bounces >= max_bounces) {
        state = "leaving";
		segment_spacing = segment_spacing / 3;
    }
	
    y += vh * dir;
    x += sin(degtorad(zigzag_timer)) * vw;
    zigzag_timer += 10;
}
else if (state == "leaving") {
    y += vh * 3 * dir;
    if (y > room_height + sprite_height * segment_count || y < 0 - vh - sprite_height * segment_count) {
        instance_destroy();
    }
}

array_insert(head_history, 0, [x, y]);

if (array_length(head_history) > max_history) {
    array_resize(head_history, max_history);
}