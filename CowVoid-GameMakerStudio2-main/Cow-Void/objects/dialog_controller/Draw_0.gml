draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Fondo de diálogo
var box_x = 32;
var box_y = room_height - 128;
var box_w = room_width - 64;
var box_h = 96;

draw_set_color(c_white);
draw_rectangle(box_x - 2, box_y - 2, box_x + box_w + 2, box_y + box_h + 2, false); // borde blanco

draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false); // fondo negro

// Sprite personaje
var spr = dialogos[dialogo_actual].sprite;
draw_sprite(spr, 0, box_x + 8, box_y + 8);

// Texto
draw_set_color(c_white);
draw_text(box_x + 72, box_y + 8, texto_mostrado);
