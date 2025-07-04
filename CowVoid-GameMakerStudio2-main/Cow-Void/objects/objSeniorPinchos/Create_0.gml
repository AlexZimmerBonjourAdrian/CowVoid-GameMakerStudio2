sprite_index = Seniorpinchos;

if (variable_instance_exists(id, "randomSpawn") && randomSpawn) {
    // ———— RANDOM SPAWN BRANCH ————
    // clear the flag so it doesn't run again
    randomSpawn = false;

    // prevent any “jump” logic:
    gravity = 0;
    vspeed  = 0;

    targetY = -1000;

} else {

    y = room_height - 90 + sprite_get_bbox_bottom(Seniorpinchos)/2;

    gravity = 0.5;

    var p1 = instance_nearest(x, y, ChicharronTuto);
    var p2 = instance_nearest(x, y, PoloTuto);
    var ply;
    if      (p1 == noone) ply = p2;
    else if (p2 == noone) ply = p1;
    else                   ply = (point_distance(x,y,p1.x,p1.y) < point_distance(x,y,p2.x,p2.y)) ? p1 : p2;

    targetY = (ply != noone) ? ply.y : room_height/2;

    var h = abs(y - targetY);
    vspeed = -sqrt(2 * gravity * h);
}
