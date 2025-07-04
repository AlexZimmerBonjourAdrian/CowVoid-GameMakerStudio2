if (instance_exists(owner) && owner.escudo_activado) {
	x = owner.x + 90;
    y = owner.y + 90;
} else {
    instance_destroy();
}
