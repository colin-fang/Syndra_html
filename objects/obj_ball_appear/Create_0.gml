///this is the animation for when the ball is created
event_inherited();
image_speed = 2;

///variables for pushing ball when colliding with cone
dist = 0;				//used to stop vibrating at the end
dir = 0;				//direction
xlength = 0;			//force in the x plane
ylength = 0;			//force in the y plane
knock_true = false;		//this variable is used to check if the created ball should be knocked back