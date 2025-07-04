if (instance_exists(owner) && owner.escudo_activado) {
    x = owner.x+30;
    y = owner.y+30;
} else {
    instance_destroy();
}