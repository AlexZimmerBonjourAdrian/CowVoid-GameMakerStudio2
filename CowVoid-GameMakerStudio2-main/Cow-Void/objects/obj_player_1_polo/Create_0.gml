
y = 1000;
x = room_width / 2;

image_blend = c_white;
damaged = false;
timer_dmg = 0;
vidas = 3;
invulnerable = false;
invul_timer = 0;
escudos = 3;
escudo_activado = false;
escudo_timer = 0;

var barrera_espaciado = 300;
var barrera_y = y - 150;

for (var i = 0; i < 3; i++) {
    var barrera_x = (room_width / 2) - barrera_espaciado + (i * barrera_espaciado);

	
    var barrera = instance_create_layer(barrera_x, barrera_y, "Instances", Barrera);
	
		barrera.image_xscale = 4;
		barrera.image_yscale = 3;
		barrera.owner = id;
}