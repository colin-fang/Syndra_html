//
//after colliding with obj_cone, knockback variables are set for the obj_ball_appear 
//these variables will be used to knockback the new obj_ball
obj_ball_appear.dir = point_direction(syndra.x, syndra.y, other.x, other.y);
obj_ball_appear.xlength = lengthdir_x(global.e_launch_range, obj_ball_appear.dir);
obj_ball_appear.ylength = lengthdir_y(global.e_launch_range, obj_ball_appear.dir);
obj_ball_appear.knock_true = true;
obj_ball_appear.dist = point_direction(obj_ball_appear.x, obj_ball_appear.y, obj_ball_appear.x + 
										obj_ball_appear.xlength, obj_ball_appear.y + obj_ball_appear.ylength);