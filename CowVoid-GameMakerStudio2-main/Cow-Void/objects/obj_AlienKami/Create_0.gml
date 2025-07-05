var w = sprite_get_width(sprite_index);
var h = sprite_get_height(sprite_index);
sprite_set_offset(sprite_index, w/2, h/2);
image_speed=0.2;
dead=false;

x = choose((room_width/2)-sprite_width, (room_width/2)  + sprite_width);

y = 0;
if (x < room_width / 2) {
    vw = random_range(2, 4);
} else {
    vw = -random_range(2, 4); 
}

vh = 0;
