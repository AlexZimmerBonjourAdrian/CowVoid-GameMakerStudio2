
has_popped             = false;

move_timer             = 0;
next_move_change       = irandom_range(room_speed, room_speed * 2);
move_dx                = 0;
move_dy                = 0;

vidas                  = 5;
damaged                = false;
timer_dmg              = 0;
invulnerable           = false;
invul_timer            = 0;

escudos                = 2;                  
escudo_activado        = false;
escudo_timer           = 0;
escudo_duration        = room_speed * 1;     
escudo_radius          = 100;               

shot_count             = 0;
shot_cooldown_timer    = 0.2;
shot_cooldown_duration = ceil(room_speed * 0.1);

image_speed = 0.2;