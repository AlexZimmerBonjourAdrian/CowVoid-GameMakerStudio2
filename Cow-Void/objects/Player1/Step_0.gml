var pressed_left = keyboard_check(ord("A"));
var pressed_right = keyboard_check(ord("D"));

var xdirection = pressed_right - pressed_left;

var move_speed = 2;
//if(pressed_left) x = x - movement
x = x + (xdirection * move_speed);