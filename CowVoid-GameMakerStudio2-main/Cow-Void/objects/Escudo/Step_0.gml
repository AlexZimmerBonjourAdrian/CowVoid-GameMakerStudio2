if (instance_exists(owner) && owner.escudo_activado) {
	x = owner.x;
    y = owner.y;
} else {
    instance_destroy();
}
