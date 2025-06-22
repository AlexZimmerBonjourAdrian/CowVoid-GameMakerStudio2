var spacing = 50; // Ajustado a un tamaño más pequeño
var scale = 0.1;

if (instance_exists(obj_player_2_chicharron)) {
    for (var i = 0; i < obj_player_2_chicharron.vidas; i++) {
        draw_sprite_ext(VidaSPR, 0, 32 + i * spacing, 20, scale, scale, 0, c_white, 1);
    }
	

    var texto = "Escudos: " + string(obj_player_2_chicharron.escudos);
    draw_text(32, 50, texto);
}

