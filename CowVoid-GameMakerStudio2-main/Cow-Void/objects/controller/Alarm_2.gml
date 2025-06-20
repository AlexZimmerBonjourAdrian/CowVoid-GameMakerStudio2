var target = choose(Player1, Player2);
instance_create_layer(target.x, target.y, "Effect_agujero_gusano", obj_agujero_gusano_warning);
alarm[2] = irandom_range(180, 300); // cada 3-5 segundos