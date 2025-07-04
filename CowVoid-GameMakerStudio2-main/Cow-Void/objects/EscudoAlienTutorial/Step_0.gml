if (instance_exists(owner) && owner.escudo_activado) {
    x = owner.x-10;
    y = owner.y-5;
} else {
    instance_destroy();
}