time_left -= 1;
if (time_left <= 0) {
    var p1 = instance_exists(PoloTuto);
    var p2 = instance_exists(ChicharronTuto);
    
    if (!p1 &&  p2)        room_goto(MuertePolo);
    else if ( p1 && !p2)   room_goto(MuerteChicharron);
    else if (!p1 && !p2)   room_goto(Empate);
    else                   room_goto(Dialogs3);
}
if (surface_exists(timer_surf)) {
    surface_free(timer_surf);
}