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
piss_offset_x = -20;
piss_offset_y = -20;


scale = 1.25
image_yscale*= scale;

//if chess room complete, spawns player on left side of home level
if o_music.room_checker = 1
	{
	x = 23
	y = 190
	}