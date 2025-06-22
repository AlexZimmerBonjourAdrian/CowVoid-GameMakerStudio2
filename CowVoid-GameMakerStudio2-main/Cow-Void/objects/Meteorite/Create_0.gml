// Posición inicial en X: entra desde fuera de la room
x = choose(-sprite_width, room_width + sprite_width);


y = room_height / 2;

// Dirección horizontal
if (x < room_width / 2) {
    vw = random_range(2, 4);
} else {
    vw = -random_range(2, 4); 
}


vh = 0;

// Rotación aleatoria (opcional)
image_angle = random(360);
rotation_speed = random_range(-3, 3);
