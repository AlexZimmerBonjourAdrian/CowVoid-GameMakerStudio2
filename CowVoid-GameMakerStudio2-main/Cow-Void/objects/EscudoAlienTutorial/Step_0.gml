if (instance_exists(owner) && owner.escudo_activado) {
    x = owner.x - sprite_get_width(sprite_index)/2;
    y = owner.y - sprite_get_height(sprite_index)/2;
} else {
    instance_destroy();
}