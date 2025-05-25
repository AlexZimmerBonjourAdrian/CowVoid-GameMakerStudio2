x += vw;
y += vh;

// Destrucción si sale de pantalla
if (x < -sprite_width || x > room_width + sprite_width) {
    instance_destroy();
}

image_angle += rotation_speed;