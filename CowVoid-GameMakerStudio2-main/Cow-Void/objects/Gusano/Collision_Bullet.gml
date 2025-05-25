with (other) instance_destroy(); 

hp--;
sprite_index = spr_gusano_hit
alarm[0] = room_speed / 4;

if(hp == 0){
	instance_create_layer(x, y, "Instances", Explosion);
	instance_destroy();
}