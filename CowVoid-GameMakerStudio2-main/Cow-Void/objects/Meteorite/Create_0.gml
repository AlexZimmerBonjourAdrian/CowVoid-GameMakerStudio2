x = x == 0 ? -sprite_width : room_width + sprite_width;

if (x < room_width / 2) {
    vw = random_range(2, 4); // viene desde la izquierda
} else {
    vw = -random_range(2, 4); // viene desde la derecha
}
vh = random_range(-3, 3)
// Rotación aleatoria
image_angle = random(360);
rotation_speed = random_range(-3, 3); // Giro aleatorio