/// --- Draw Event de obj_contolladorVerdaderoTutorial ---

if (global.dialogo_actual < array_length(dialogos)) {
    var d = dialogos[global.dialogo_actual];

    // Usamos alineación centrada
    draw_set_halign(fa_center);

    // 1) Nombre centrado arriba
    var name_x = room_width * 0.5;
    var name_y = 16;
    // Sombra
    draw_set_color(c_black);
    draw_text(name_x + 2, name_y + 2, d.nombre);
    // Nombre en blanco
    draw_set_color(c_white);
    draw_text(name_x, name_y, d.nombre);

    // 2) Texto centrado justo debajo del nombre
    var line_h = 20;  // altura de línea fija
    var text_x = room_width * 0.5;
    var text_y = name_y + line_h + 8;
    // Sombra
    draw_set_color(c_black);
    draw_text(text_x + 2, text_y + 2, texto_mostrado);
    // Texto en blanco
    draw_set_color(c_white);
    draw_text(text_x, text_y, texto_mostrado);

    // Volver a alineación por defecto (izquierda), si la necesitas después
    draw_set_halign(fa_left);
}
