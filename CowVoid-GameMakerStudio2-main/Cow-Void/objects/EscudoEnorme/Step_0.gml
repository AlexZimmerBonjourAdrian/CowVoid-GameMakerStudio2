// ShieldController Step Event
if (instance_exists(owner) && owner.escudo_activado) {
    // Follow position
    x = owner.x;
    y = owner.y;
    
    // Match scale
    //image_xscale = owner.image_xscale;
   // image_yscale = owner.image_yscale;
    
    // (Optional) Match rotation if your ship rotates
   // image_angle  = owner.image_angle;
    
} else {
    instance_destroy();
}
