time += 1;
if (time >= duration) {
    instance_create_layer(x, y, "Effect_agujero_gusano", obj_agujero_gusano);
    instance_destroy(); // destruir advertencia
}
