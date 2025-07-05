if (!global.finalizando) {
    global.finalizando = true;
    alarm[6] = room_speed;
}
else {
    var total_monsters =
        instance_number(obj_NaveAlienMetralleta)
      + instance_number(MeteoritoTutorial)
      + instance_number(objNaveAlien1)
      + instance_number(objSeniorPinchos)
      + instance_number(obj_AlienKami)
      + instance_number(MinaEspacial);
      
    if (total_monsters == 0) {
        var p1 = instance_exists(PoloTuto);
        var p2 = instance_exists(ChicharronTuto);

        if (!p1 &&  p2) {
            room_goto(MuertePolo);
        }
        else if (p1 && !p2) {
            room_goto(MuerteChicharron);
        }
        else if (!p1 && !p2) {
            room_goto(Empate);
        }
        else {
            room_goto(Dialogs3);
        }
    }
    else {
        alarm[6] = room_speed;
    }
}