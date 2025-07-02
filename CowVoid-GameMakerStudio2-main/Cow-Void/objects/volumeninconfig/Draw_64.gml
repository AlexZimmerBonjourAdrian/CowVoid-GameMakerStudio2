var dx = 290;
var dy = 240;

draw_set_color(c_lime);
draw_rectangle(
    slider_x   + dx,
    slider_y   + dy,
    slider_x + (slider_w * global.music_volume) + dx,
    slider_y + (slider_h)               + dy,
    false
);