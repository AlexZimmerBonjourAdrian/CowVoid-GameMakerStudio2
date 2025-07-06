	var metralleta = instance_create_layer(
        irandom(room_width),
        0,
        "Instances_1", 
        obj_MetralletaMejora
    );
    
    metralleta.direction = 270;                 
    metralleta.speed     = random_range(1, 3);  
	alarm[1] = room_speed * (10 + random(20));
	//alarm[1] = room_speed * (12 + random(30));