// Fondo del slider
draw_set_color(c_gray);
draw_rectangle(slider_x, slider_y, slider_x + slider_w, slider_y + slider_h, false);

// Parte rellena
draw_set_color(c_lime);
draw_rectangle(slider_x, slider_y, slider_x + (slider_w * global.music_volume), slider_y + slider_h, false);

// Indicador de porcentaje
draw_set_color(c_white);
draw_text(slider_x + slider_w + 10, slider_y, string_format(global.music_volume, 1, 2));