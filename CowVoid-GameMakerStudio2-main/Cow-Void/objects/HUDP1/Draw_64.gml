var spacing = 50; // Ajustado a un tamaño más pequeño
var scale = 0.1;

if (instance_exists(obj_player_1_polo)) {
    for (var i = 0; i < obj_player_1_polo.vidas; i++) {
        draw_sprite_ext(VidaSPR, 0, 32 + i * spacing, display_get_gui_height() - 60, scale, scale, 0, c_white, 1);
    }
	

    var texto = "Escudos: " + string(obj_player_1_polo.escudos);
	
   draw_text(32, display_get_gui_height() - 90, texto);
}

