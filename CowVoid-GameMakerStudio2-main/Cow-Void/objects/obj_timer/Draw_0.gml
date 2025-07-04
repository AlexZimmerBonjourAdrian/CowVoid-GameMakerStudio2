draw_self();

// Dibuja el tiempo en el medio
var texto = string_format(tiempo_restante, 2, 0);

draw_set_font(Font4);  
var xx = x;
var yy = y;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(xx, yy, texto);


draw_set_font(-1);
draw_set_halign(fa_left); 
draw_set_valign(fa_top); 
draw_set_color(c_white);

if (global.modoMuerteSubitaDuel) {
    draw_set_alpha(0.2); 
    draw_set_color(c_red);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}


if (mostrarMuerteSubita) {
    draw_set_color(c_red);
	draw_set_font(Font4);
    draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "MUERTE SUBITA");
	
	draw_set_font(-1);
}