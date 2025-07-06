if (instance_exists(global.chich_id)) {
    with (global.chich_id) {
        speed      = 2;
        direction  = 270;
        image_speed = 0;
    }
        alarm[0] = room_speed * 1;
    
}
audio_play_sound(
    New_Project, 
    1,           
    false,        
    0.02,
    0.6,
    1.0
);

instance_destroy();