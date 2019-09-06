///this is syndra
//phy_fixed_rotation = true;
spd = 2;
state = move_state;
targetx = syndra.x;
targety = syndra.y;

///spell cds booleans
q_ready = true;
w_ready = true;
e_ready = true;
fast_ball_counter = 3; ///this counter is used like a boolean; when the counter > 0, the skill is ready
						///after the skill, the counter is set to 0
						///>0 == true, 0 == false
						
//q variables
global.q_cd = 4;//should be 4
global.q_range = 80; //the range in which q is castable
global.q_dur = 6; //the number of seconds that the obj_q can exist
//w variables
global.w_cd = 8;//should be 8
//e variables
global.e_cd = 12;//should be 12
global.e_launch_range = 10; //just has to be bigger than 0, this doesnt actually indicate the range of the launch
global.e_launch_speed = 15; //this is the speed at which obj_cone pushes obj_ball
global.e_launch_dur = 0.1; //this is the duration in which the obj_ball is in motion after being pushe by obj_cone
//r variables
global.r_cd = 80;//should be 80
global.r_dur = 5;//this is the duration that the r ability is available upon activation
global.fast_ball_dur = 0.09; //this is the duration that the fast_ball is in motion
global.r_launch_range = 10; //just has to be bigger than 0, this doesnt actually indicate the range of the launch

//ball variables
pull_count = 0; //number of balls in range of being pulled

//draw booleans used to activate and deactivate syndra's ball sprites
draw_ball_1 = true;
draw_ball_2 = true;
draw_ball_3 = true;

