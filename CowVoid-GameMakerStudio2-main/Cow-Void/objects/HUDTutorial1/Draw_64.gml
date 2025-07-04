// obj_HUD_Controller – Draw GUI Event

var spacing     = 50;    // px between life‐icons
var scale       = 0.1;   // sprite scale
var padding     = 16;    // distance from edges
var font_color  = c_white;
var line_height = 28;    // px between text lines

// — Chicharrón in the top‐left corner —
if (instance_exists(PoloTuto)) {
    var p  = PoloTuto;
    var x0 = padding;
    var y0 = padding;
    
    // name
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(font_color);
    draw_text(x0, y0, "  Polo");
    
    // shields count underneath (one line height below)
    draw_text(x0, y0 + line_height, "  Escudos: " + string(p.escudos));
    
    // life‐sprites on the next row (two line heights down)
    for (var i = 0; i < p.vidas; i++) {
        var sx = x0 + i * spacing;
        var sy = y0 + line_height*2;
        draw_sprite_ext(VidaSPR, 0, sx, sy, scale, scale, 0, font_color, 1);
    }
}

// — Polo in the top‐right corner —
if (instance_exists(ChicharronTuto)) {
    var p2        = ChicharronTuto;
    var x1        = room_width - padding;
    var y1        = padding;
    var offsetX   = 40;
    var start_x   = x1 - offsetX; 


    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_color(font_color);
    draw_text(x1, y1, "Chicharron   ");


    draw_text(x1, y1 + line_height, "Escudos: " + string(p2.escudos) + "   ");

    for (var i = 0; i < p2.vidas; i++) {
        var sx = start_x - i * spacing;
        var sy = y1 + line_height * 2;
        draw_sprite_ext(VidaSPR, 0, sx, sy, scale, scale, 0, font_color, 1);
    }
}
