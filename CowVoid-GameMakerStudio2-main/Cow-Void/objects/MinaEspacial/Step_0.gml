/// Step Event of “MeteorDown”
x += vw;
y += vh;

// spin
image_angle += rotation_speed;

// destroy once it’s off the bottom
if (y > room_height + sprite_height/2) {
    instance_destroy();
}
