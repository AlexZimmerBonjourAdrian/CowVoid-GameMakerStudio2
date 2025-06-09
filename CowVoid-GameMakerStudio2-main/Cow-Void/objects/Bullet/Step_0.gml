// En Step del Bullet:

var escudo_inst = instance_place(x, y, Escudo);
if (escudo_inst != noone) {
    if (escudo_inst.owner != owner) {
        // Rebote
		var desvio = random_range(-30, 30);
direction = (direction + 180 + desvio) mod 360;
        x += lengthdir_x(speed, direction);
        y += lengthdir_y(speed, direction);

    }
}
