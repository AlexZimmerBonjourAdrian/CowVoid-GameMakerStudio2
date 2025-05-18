var pressed_left = keyboard_check(vk_left);
var pressed_right = keyboard_check(vk_right);

var xdirection = pressed_right - pressed_left;

var move_speed = 2;
//if(pressed_left) x = x - movement
x = x + (xdirection * move_speed);