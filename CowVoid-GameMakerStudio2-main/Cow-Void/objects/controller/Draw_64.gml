if (!global.inicioPelea && room == Duel) {
    var segundos = floor(global.countdown / room_speed); // 3, 2, 1, 0
    var texto = "";

    if (segundos > 0) {
        texto = string(segundos);
    } else {
        texto = "¡YA!";
    }

    draw_set_font(Font4);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(display_get_gui_width()/2, display_get_gui_height()/2, texto);
	draw_set_font(-1);
}

