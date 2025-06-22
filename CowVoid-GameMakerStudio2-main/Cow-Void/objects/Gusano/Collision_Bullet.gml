with (other) instance_destroy(); 

if (array_length(segments) > 0) {
        array_pop(segments);
		array_pop(segments);
		segment_count -= 2;
		array_resize(segments, segment_count);
		
//		sprite_index = spr_gusano_hit
//		alarm[0] = room_speed / 4;
    } else {
        instance_destroy();
    }