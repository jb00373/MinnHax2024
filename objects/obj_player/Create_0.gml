depth = -3;
xspd = 0;
yspd = 0;

x_direction = 1;
x_last_direction = 1;
y_direction = 1;
y_last_direction = 1;

acceleration = 0.4;
deceleration = 0.4;
max_spd = 2;

pee = false;

//if chess room complete, spawns player on left side of home level
if o_music.room_checker = 1
	{
	x = 23
	y = 190
	}