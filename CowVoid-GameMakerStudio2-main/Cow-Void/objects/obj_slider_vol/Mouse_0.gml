// Si se hace clic dentro del área del slider
if (mouse_x > slider_x && mouse_x < slider_x + slider_w &&
    mouse_y > slider_y && mouse_y < slider_y + slider_h) {
    
    // Calcular nuevo volumen basado en posición del mouse
    var porcentaje = (mouse_x - slider_x) / slider_w;
    global.music_volume = clamp(porcentaje, 0, 1);
    
    // Aplicar volumen
    audio_master_gain(global.music_volume);
	show_debug_message("Vol: " + string(global.music_volume));

}
