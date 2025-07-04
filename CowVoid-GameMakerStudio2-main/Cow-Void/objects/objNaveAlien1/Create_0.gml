// Pop-in setup (spawner must set pop_target_y & pop_speed)
has_popped             = false;

// Erratic movement
move_timer             = 0;
next_move_change       = irandom_range(room_speed, room_speed * 2);
move_dx                = 0;
move_dy                = 0;

// Lives & damage flash
vidas                  = 3;
damaged                = false;
timer_dmg              = 0;
invulnerable           = false;
invul_timer            = 0;

// Shield (same as player)
escudos                = 2;                   // total shields available
escudo_activado        = false;
escudo_timer           = 0;
escudo_duration        = room_speed * 1;      // how long each shield lasts
escudo_radius          = 100;                 // proximity pickup radius

// Shooting cooldown (3-shot burst)
shot_count             = 0;
shot_cooldown_timer    = 0;
shot_cooldown_duration = ceil(room_speed * 0.5);

image_speed = 0.2;