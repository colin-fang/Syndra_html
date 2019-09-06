///r duration alarm
fast_ball_counter = 0;
//if the third ball hasnt been thrown and the r duration has run out, then 
//put the skill on cd and activate the ui cd animation
if(draw_ball_3 == true){
	obj_ui_r.count = 0;
	syndra.alarm[4] = room_speed*global.r_cd; //the cd of the r
												//if the third ball hasnt been thrown then trigger the alarm 4
												//otherwise if the third ball has been thrown then no need to
												//update the alarm 4 (reset the cd)
}