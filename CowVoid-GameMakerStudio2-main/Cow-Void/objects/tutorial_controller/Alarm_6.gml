var p1 = instance_exists(PoloTuto);
var p2 = instance_exists(ChicharronTuto);

if (!p1 &&  p2) {

    room_goto(MuertePolo);
}
else if ( p1 && !p2) {

    room_goto(MuerteChicharron);
}
else if (!p1 && !p2) {

    room_goto(Empate);
}
else {

    room_goto(Dialogs3);
}







