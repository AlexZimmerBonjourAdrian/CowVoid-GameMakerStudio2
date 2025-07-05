varying vec2 v_vTexcoord;

uniform float u_time;
uniform vec2 u_position;
uniform float u_radius;

void main() {
    vec2 coord = v_vTexcoord;
    vec2 offset = coord - u_position;
    float dist = length(offset);

    if (dist < u_radius) {
        float strength = (u_radius - dist) / u_radius; // de 1 (cerca) a 0 (fuera)
        
        // Ángulo actual del pixel respecto al centro
        float angle = atan(offset.y, offset.x);

        // Velocidad y cantidad de rotación (ajustar factor)
        float rotation = u_time * u_radius *  80.0 * strength;

        // Nueva posición rotada
        float s = sin(angle + rotation);
        float c = cos(angle + rotation);
        vec2 rotated = vec2(c, s) * dist;

        coord = u_position + rotated;
    }

    gl_FragColor = texture2D(gm_BaseTexture, coord);
}
