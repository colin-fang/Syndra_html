//collision event for when the obj_ball is being launched by the obj_cone
if(pushed = false){
	pushed = true;
	var dir = point_direction(syndra.x, syndra.y, x, y); //direction in which the ball is launched
	var xlength = lengthdir_x(global.e_launch_range, dir); //the length in the x direction in which the ball is launched
	var ylength = lengthdir_y(global.e_launch_range, dir); //the length in the y direction in which the ball is launched
	var dist = point_direction(x, y, x + xlength, y + ylength);
	if(dist >= global.e_launch_speed){
		move_towards_point(x + xlength, y + ylength, global.e_launch_speed);
	}
	pull_in_range = false; //this code stops pull_ball script on the specific obj_ball instance
	alarm[3] = room_speed * global.e_launch_dur; //this alarm for the obj_ball stops the obj_ball in motion
}


