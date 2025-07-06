bob_phase += bob_speed;
x = orig_x + sin(bob_phase) * bob_amp;
y = orig_y + cos(bob_phase * 1.2) * (bob_amp * 0.7);
if (speed > 0) {
    image_angle += 5;
}