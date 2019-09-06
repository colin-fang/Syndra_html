///throw three obj_balls in the direction of the mouse
///this is syndra's r
scr_get_input();

/////location where the ball will go towards
target_fast_x = window_view_mouse_get_x(0);
target_fast_y = window_view_mouse_get_y(0);

var knockback = 15;
var dir = point_direction(syndra.x, syndra.y, target_fast_x, target_fast_y);
var xlength = lengthdir_x(global.r_launch_range, dir); //the length in the x direction in which the fast ball is launched
var ylength = lengthdir_y(global.r_launch_range, dir); //the length in the y direction in which the fast ball is launched
var fast_ball = instance_create_layer(syndra.x, syndra.y, "instances", obj_fast_ball);
fast_ball.image_angle += dir - 45;
with (fast_ball) {
	move_towards_point(syndra.x + xlength, syndra.y + ylength, knockback);
}

fast_ball.alarm[0] = room_speed*global.fast_ball_dur; //the time the fast_ball is in motion
fast_ball_counter -= 1;

//reset all balls duration
if(instance_exists(obj_ball)){
	obj_ball.alarm[0] = room_speed*global.q_dur;
	obj_ball.image_speed = 1;
}
