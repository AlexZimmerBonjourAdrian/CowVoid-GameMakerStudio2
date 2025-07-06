if (!global.inicioPelea) {
    var segundos = floor(global.countdown / room_speed); // 3, 2, 1, 0
    var texto = (segundos > 0) ? string(segundos) : "¡YA!";
    var centro_x = display_get_gui_width() / 2;
    var centro_y = display_get_gui_height() / 2;

    draw_set_font(Font4_1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var texto_ronda = "RONDA " + string(global.rondaEnCurso);
    draw_text(centro_x, centro_y - 80, texto_ronda)


 draw_set_font(Font4);
    draw_text(centro_x, centro_y, texto);

    draw_set_font(-1);
}
