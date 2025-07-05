if (instance_exists(owner) && owner.escudo_activado) {
    x = owner.x-45;
    y = owner.y-35;
} else {
    instance_destroy();
}