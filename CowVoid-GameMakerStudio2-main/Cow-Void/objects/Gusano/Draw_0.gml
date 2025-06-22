for (var i = segment_count + 1; i > 0; i--) {
    var index = (i) * segment_spacing;
    if (index < array_length(head_history)) {
		var spr = spr_gusano_body_big;
		if( i % 2 == 0){
			spr = spr_gusano_body_small;	
		}
        var pos = head_history[index];
        draw_sprite_ext(spr, 0, pos[0], pos[1], 0.6, 0.6, 0, c_white, 1);
    }
}

// Dibujar cabeza
draw_sprite_ext(spr_gusano_cabeza, 0, x, y, 0.6, 0.6, 0, c_white, 1);
