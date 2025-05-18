image_angle += rotation_speed;

// Destruir si sale de la pantalla
if (y > room_height + 50) {
    instance_destroy();
}