instance_create_layer(x, y, "Instances", Explosion);

score += 10;

if(random_range(1, 100) > 95){
	var metralleta = instance_create_layer(
        x,
        y,
        "Instances", 
        obj_MetralletaMejora
    );
    
	if(other.dir == "up"){
		show_debug_message("el owner es polo");
		metralleta.direction = 270;
	}else{
		show_debug_message("el owner es chicha");
		metralleta.direction = 90;
	}
                     
    metralleta.speed = random_range(2, 3); 
}
with (other) instance_destroy(); 
instance_destroy();
