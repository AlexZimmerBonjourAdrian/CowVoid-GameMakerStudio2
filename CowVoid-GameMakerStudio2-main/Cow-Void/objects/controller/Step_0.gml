if (random(45) < 1) {
    var meteor = instance_create_layer(
        irandom(room_width),  
        irandom(room_height),
        "Instances", 
        Meteorite
    );
    
    meteor.direction = point_direction(meteor.x, meteor.y, x, y);
    meteor.speed = random_range(1, 3); 
    
    // Rotación aleatoria
    meteor.rotation_speed = random_range(-3, 3);
}