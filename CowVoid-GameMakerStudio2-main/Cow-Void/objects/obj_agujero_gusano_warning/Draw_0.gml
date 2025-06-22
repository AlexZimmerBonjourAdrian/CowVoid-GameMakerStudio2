// Asegurarse de que el application_surface exista
if (!surface_exists(application_surface)) exit;

// Crear una copia del application_surface
var surf_width = surface_get_width(application_surface);
var surf_height = surface_get_height(application_surface);

var surf_temp = surface_create(surf_width, surf_height);

// Copiamos el contenido actual a la nueva surface
surface_copy(surf_temp, 0, 0, application_surface);

// Activamos el shader
shader_set(sh_distorsion);

// Obtener los uniform
var u_time     = shader_get_uniform(sh_distorsion, "u_time");
var u_position = shader_get_uniform(sh_distorsion, "u_position");
var u_radius   = shader_get_uniform(sh_distorsion, "u_radius");

// Tiempo en segundos
var t_relativo = (current_time - tiempo_inicio) / 1000;
shader_set_uniform_f(u_time, t_relativo);

// Coordenadas del centro de distorsión (en píxeles de pantalla)
var cx = x;
var cy = y;

// Convertir a coordenadas UV (0.0 - 1.0)
var uvx = cx / surf_width;
var uvy = cy / surf_height;

// Setear uniform de centro y radio (en UV)
shader_set_uniform_f(u_position, uvx, uvy);
shader_set_uniform_f(u_radius, radio);

// Dibujar la surface con el shader aplicado
//draw_surface(surf_temp, 0, 0);
var w_view = camera_get_view_width(view_camera[0]);
var h_view = camera_get_view_height(view_camera[0]);

draw_surface_stretched(surf_temp, 0, 0, surf_width, surf_height);


// Restaurar shader
shader_reset();

// Limpiar la surface temporal
surface_free(surf_temp);
