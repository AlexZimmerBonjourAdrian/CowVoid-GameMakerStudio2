	var escudito = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        obj_escudomas1
    );
    
    escudito.direction = 270;                 
    escudito.speed     = random_range(1, 3);  
	alarm[2] = room_speed * (5 + random(15));