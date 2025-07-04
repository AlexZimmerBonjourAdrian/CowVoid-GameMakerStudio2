if (tiempo_restante > 0) {
    tiempo_restante -= delta_time / 1000000;
    if (tiempo_restante < 0) {
		mostrarMuerteSubita = true;
		tiempoMensaje = room_speed * 2;
		tiempo_restante = 0;
		
		global.modoMuerteSubitaDuel = true;
	};
	
	
	
}

if(mostrarMuerteSubita) {
	tiempoMensaje -= 1;
	
	if(tiempoMensaje <= 0) {
		mostrarMuerteSubita = false
	}
	
}