if (!damaged) {
	
	vida -= 1;
	
	if(vida <= 0) {
		instance_destroy();
		
			
	} else {
		damaged = true;
		image_blend = c_red;
		dmg_timer = 10;
	}
	with (other) instance_destroy();
}else if (other.owner == owner){
	with (other) instance_destroy();

}
