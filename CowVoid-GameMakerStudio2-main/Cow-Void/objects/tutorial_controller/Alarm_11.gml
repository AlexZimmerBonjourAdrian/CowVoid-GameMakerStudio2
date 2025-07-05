    if(!global.finalizando){
	var kamikazealien = instance_create_layer(
        irandom(room_width),
        0,
        "Instances", 
        obj_AlienKami
    );
    
    kamikazealien.direction = 270;                 
    kamikazealien.speed     = random_range(1, 2);  
    kamikazealien.rotation_speed = random_range(-2, 2);
	alarm[11] = room_speed *  9 + random(7); 
	}