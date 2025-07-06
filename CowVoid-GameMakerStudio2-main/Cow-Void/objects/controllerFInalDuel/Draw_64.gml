if (global.mensaje != "") {
    var mensaje = global.mensaje;
    var xP = display_get_gui_width() / 2;
    var yP = display_get_gui_height() / 2;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(Font4_1); // Asegurate de que la fuente esté cargada
    draw_set_color(c_white);

    draw_text(xP, yP, mensaje);
}
