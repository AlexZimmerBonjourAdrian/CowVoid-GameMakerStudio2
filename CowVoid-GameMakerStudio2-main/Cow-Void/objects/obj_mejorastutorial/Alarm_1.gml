	var metralleta = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        obj_MetralletaMejora
    );
    
    metralleta.direction = 270;                 
    metralleta.speed     = random_range(1, 3);  
	alarm[1] = room_speed * (5+ random(10));
	//alarm[1] = room_speed * (12 + random(30));