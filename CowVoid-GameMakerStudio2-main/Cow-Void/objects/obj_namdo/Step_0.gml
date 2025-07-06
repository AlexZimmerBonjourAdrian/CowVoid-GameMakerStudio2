bob_phase += bob_speed;
x = orig_x + sin(bob_phase) * bob_amp;
y = orig_y + cos(bob_phase * 1.2) * (bob_amp * 0.7);
if(global.namdoindicator){
	alarm[1] = room_speed * (5+ random(10));
	global.namdoindicator=false;
}