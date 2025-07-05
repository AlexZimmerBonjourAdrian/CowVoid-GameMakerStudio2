time += 1;
if (time >= duration) {
    instance_create_layer(x, y, "Effect_agujero_gusano", obj_agujero_gusano);
}

switch (estado) {
    case "abriendo":
        radio += vel_crecimiento * time / 30;
        if (radio >= radio_maximo) {
            radio = radio_maximo;
            estado = "activo";
            t_vida = 0;
			instance_create_layer(x - sprite_width, y - sprite_height, "Instances", Gusano);
        }
        break;

    case "activo":
		t_vida += 1;
        if (t_vida >= tiempo_activo) {
            estado = "cerrando";
        }
        break;

    case "cerrando":
        radio -= vel_decrecimiento * time / 50;
        if (radio <= 0) {
            instance_destroy();
        }
        break;
}