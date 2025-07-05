// Evento: Draw GUI
var mensaje = "";

if (global.hayEmpate) {
    mensaje = "¡Empate!";
} else if (global.ganadorEs == obj_player_1_polo) {
    mensaje = "El Jugador 1 gana la partida!";
} else if (global.ganadorEs == obj_player_2_chicharron) {
    mensaje = "El Jugador 2 gana la partida!";
} else {
    mensaje = "EMPATE!";
}

// Texto centrado
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font4_1);
draw_set_color(c_white);
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 100, mensaje);

draw_set_font(-1);
