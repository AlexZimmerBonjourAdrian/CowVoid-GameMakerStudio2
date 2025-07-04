// AGUJERO DE GUSANO

var player1_exists = instance_exists(PoloTuto);
var player2_exists = instance_exists(ChicharronTuto);

if (player1_exists || player2_exists) {
    var target = noone;
    if (player1_exists && player2_exists) {
        target = choose(PoloTuto, ChicharronTuto);
    } else if (player1_exists) {
        target = PoloTuto;
		
		room_goto(GanaPolo);
    } else {
        target = ChicharronTuto;
		
		room_goto(GanaChicha);
    }
    
    if (target != noone) {
        instance_create_layer(target.x, target.y, "Effect_agujero_gusano", obj_agujero_gusano_warning);
    }
	} else {
    var delay = room_speed * 2;  
    alarm[3] = delay;
}

alarm[2] = irandom_range(180, 300); // cada 3-5 segundos