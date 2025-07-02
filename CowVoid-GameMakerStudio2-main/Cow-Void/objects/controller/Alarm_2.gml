// AGUJERO DE GUSANO

var player1_exists = instance_exists(obj_player_1_polo);
var player2_exists = instance_exists(obj_player_2_chicharron);

if (player1_exists || player2_exists) {
    var target = noone;
    if (player1_exists && player2_exists) {
        target = choose(obj_player_1_polo, obj_player_2_chicharron);
    } else if (player1_exists) {
        target = obj_player_1_polo;
		
		room_goto(GanaPolo);
    } else {
        target = obj_player_2_chicharron;
		
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