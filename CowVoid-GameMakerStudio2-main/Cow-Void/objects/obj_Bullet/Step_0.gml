if (image_xscale < 1) {
    var inc = 0.02;
    image_xscale = min(image_xscale + inc, 1);
    image_yscale = image_xscale;
}

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

if (instance_exists(target_id) && distance_to_object(target_id) < 8) {
   
    instance_create_layer(x-600, y-600, "Instances", obj_Explosion_1);

    instance_destroy();
}