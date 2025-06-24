if (bienvenida || titulo || descripcion) {
    tiempo_texto -= 1;
    if (tiempo_texto <= 0) {
        bienvenida = false;
		titulo = false;
        descripcion = false;

    }
}