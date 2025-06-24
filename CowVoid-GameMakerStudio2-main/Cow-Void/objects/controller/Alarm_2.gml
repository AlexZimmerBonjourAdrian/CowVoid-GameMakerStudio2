// AGUJERO DE GUSANO

var target = choose(obj_player_1_polo, obj_player_2_chicharron);
instance_create_layer(target.x, target.y, "Effect_agujero_gusano", obj_agujero_gusano_warning);
alarm[2] = irandom_range(180, 300); // cada 3-5 segundos