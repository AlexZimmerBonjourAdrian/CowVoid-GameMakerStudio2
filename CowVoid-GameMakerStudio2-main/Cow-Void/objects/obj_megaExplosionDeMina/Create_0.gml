image_xscale = 1.4;
image_yscale = 1.4;

y = y - sprite_height / 2;
x = x - sprite_width / 2;

image_speed = 0.6;
audio_play_sound(
    New_Project,  // asset
    1,            // priority
    false,        // no loop
    0.06,         // gain 
    0.6,            // offset
    1.0           // pitch
);