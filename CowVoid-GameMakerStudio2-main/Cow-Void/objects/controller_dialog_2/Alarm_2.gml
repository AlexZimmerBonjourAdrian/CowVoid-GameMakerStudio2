    var mina = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        MinaEspacial
    );
    mina.image_xscale = 0.5;
mina.image_yscale = 0.5;
    mina.direction = 270;                 
    mina.speed     = random_range(1, 2);  
    mina.rotation_speed = random_range(-2, 2);
	alarm[2] = room_speed *  13 + random(7); 