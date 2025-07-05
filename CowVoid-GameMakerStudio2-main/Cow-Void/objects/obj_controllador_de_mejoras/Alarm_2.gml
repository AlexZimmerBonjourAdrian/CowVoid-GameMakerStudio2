	var escudito = instance_create_layer(
        irandom(room_width),
        0,
        "Instances_1", 
        obj_escudomas1
    );
    
    escudito.direction = 270;                 
    escudito.speed     = random_range(1, 3);  
	alarm[2] = room_speed * (12 + random(35));