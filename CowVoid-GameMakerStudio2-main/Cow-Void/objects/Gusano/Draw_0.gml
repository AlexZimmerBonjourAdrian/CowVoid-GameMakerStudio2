for (var i = 0; i < segment_count; i++) {
    var index = (i + 1) * segment_spacing;
    if (index < array_length(head_history)) {
        var pos = head_history[index];
        draw_sprite_ext(spr_gusano_body_big, 0, pos[0], pos[1], 0.6, 0.6, 0, c_white, 1);
    }
}

// Dibujar cabeza
draw_sprite_ext(spr_gusano_cabeza, 0, x, y, 0.6, 0.6, 0, c_white, 1);
