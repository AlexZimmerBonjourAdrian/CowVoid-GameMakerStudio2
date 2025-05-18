instance_destroy();
with (other) instance_destroy(); 

// Crear sistema de partículas local
var ps = part_system_create();
part_system_position(ps, x, y);

// Partículas de explosión
var p = part_type_create();
part_type_shape(p, pt_shape_spark);
part_type_color1(p, c_red);
part_type_size(p, 0.5, 0.2, -0.1, 0);
part_type_speed(p, 2, 5, -0.2, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_life(p, 10, 20);

// Generar partículas
part_particles_create(ps, x, y, p, 20);

// Destruir el sistema después de 1 segundo (para optimizar)
alarm[0] = 30; // 30 frames = ~1 seg (ajusta según room_speed)

score += 10;