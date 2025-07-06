if (position_meeting(mouse_x, mouse_y, id)) {
    image_xscale = lerp(image_xscale, 1.05, 0.2);
    image_yscale = lerp(image_yscale, 1.05, 0.2);
} else {
    image_xscale = lerp(image_xscale, 1.0, 0.2);
    image_yscale = lerp(image_yscale, 1.0, 0.2);
}