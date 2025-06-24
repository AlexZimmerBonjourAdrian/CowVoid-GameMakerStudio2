if (bienvenida) {
    
//draw_set_font(Tittle);
draw_set_color(c_white);
var w = string_width(bienvenida_a_mostrar);
var h = string_height(bienvenida_a_mostrar);

draw_text_transformed(room_width/2 - w, 50, bienvenida_a_mostrar, 4.0, 4.0, 0);
}