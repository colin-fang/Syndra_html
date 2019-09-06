//this is the move state
//this state serves as the code for moving syndra towards a destination determined by the right mouse click
//this state also serves as the code for detecting q, e, and r inputs
//this state will be executed for every step of the syndra obj
scr_get_input();
///mouse click move
if(rmouse){
	targetx = window_view_mouse_get_x(0);
	targety = window_view_mouse_get_y(0);
}
dist = point_distance(x, y, targetx, targety); ///put this dist outside of mouse click if
																		///so that the dist is calculated constantly
if (dist > 2){
   move_towards_point(targetx, targety, 2);
   }
else{
	syndra.speed = 0;
}
///---------------------------------------------------

//q click 
if(q_key){
	script_execute(create_ball);
	
}
//e_click
if(e_key){
	script_execute(cone_push);	
}
///for r
if(r_key){
	if(syndra.fast_ball_counter == 3){
		syndra.alarm[3] = room_speed*global.r_dur; //the duration that the r is available
	}	
	if(syndra.fast_ball_counter > 0){
		script_execute(throw_three_balls);	
	}
}

if(s_key){
	targetx = syndra.x;
	targety = syndra.y;
}