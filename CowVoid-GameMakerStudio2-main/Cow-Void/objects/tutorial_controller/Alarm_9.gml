    var meteor = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        MeteoritoTutorial
    );
    
    meteor.direction = 270;                 
    meteor.speed     = random_range(1, 3);  
    meteor.rotation_speed = random_range(-3, 3);
	alarm[9] = room_speed * (1+ (1/(1 + random(4))));
