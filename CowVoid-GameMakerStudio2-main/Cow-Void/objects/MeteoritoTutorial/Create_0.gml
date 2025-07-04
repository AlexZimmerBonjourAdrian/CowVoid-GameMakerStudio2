/// Create Event of “MeteorDown” (or whatever you called it)
// Spawn anywhere along the top edge
x = irandom(room_width);
y = -sprite_height;     // just above the view

// No horizontal motion
vw = 0;

// Vertical speed downwards
vh = random_range(1, 3);

// Random initial rotation
image_angle     = random(360);
rotation_speed  = random_range(-3, 3);
