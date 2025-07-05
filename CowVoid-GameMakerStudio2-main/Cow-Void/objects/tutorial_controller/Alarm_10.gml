if(!global.finalizando){
	var mina = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        MinaEspacial
    );
    
    mina.direction = 270;                 
    mina.speed     = random_range(1, 2);  
    mina.rotation_speed = random_range(-2, 2);
	alarm[10] = room_speed *  15 + random(7); 
}