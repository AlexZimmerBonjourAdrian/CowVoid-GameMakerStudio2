// 1) Build "MM:SS" from your time_left (in frames)
var total_secs = floor(time_left / room_speed);
var mm = total_secs div 60;
var ss = total_secs mod 60;
var mm_txt = mm < 10 ? "0" + string(mm) : string(mm);
var ss_txt = ss < 10 ? "0" + string(ss) : string(ss);
var txt = mm_txt + ":" + ss_txt;

// 2) Measure text at normal size
var w = string_width(txt);
var h = string_height(txt);

// 3) (Re)create the surface if needed
if (!surface_exists(timer_surf) 
 || surface_get_width(timer_surf)  != w 
 || surface_get_height(timer_surf) != h) {
    if (surface_exists(timer_surf)) surface_free(timer_surf);
    timer_surf = surface_create(w, h);
}

// 4) Draw the text into the surface
if (surface_exists(timer_surf)) {
    surface_set_target(timer_surf);
    draw_clear_alpha(c_white, 0);    // fully transparent
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    // shadow
    draw_set_color(c_black);
    draw_text(1, 1, txt);
    // main
    draw_set_color(c_white);
    draw_text(0, 0, txt);
    surface_reset_target();
}

// 5) Draw the surface scaled up 2× at top-center
var scale = 2;
var dw = w * scale;
var dh = h * scale;
var dx = (room_width - dw) * 0.5;
var dy = 16;
if (surface_exists(timer_surf)) {
    draw_surface_ext(timer_surf, dx, dy, scale, scale, 0, c_white, 1);
}
