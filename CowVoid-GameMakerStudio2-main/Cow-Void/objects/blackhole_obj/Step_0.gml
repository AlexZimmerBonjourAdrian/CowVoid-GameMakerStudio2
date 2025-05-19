if (instance_exists(Player1)) {
    var dist = point_distance(x, y, Player1.x, Player1.y);

    if (dist < radio) {
        damage_timer += 1;
        
        if (damage_timer == 30) {
            damage_timer = 0; 
        }
    } else {
        damage_timer = 0;
    }
}