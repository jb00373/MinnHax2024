left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

if up_key {
	up_key = 1;
}

x_direction = right_key - left_key;
y_direction = down_key - up_key;

if x_direction !=0 {
	x_last_direction = x_direction;
	image_xscale = x_direction;
}
else image_xscale = x_last_direction;


//MOVEMENT 
//X
if abs(xspd + (acceleration * x_direction)) > max_spd {
	xspd = max_spd * x_direction;
}
else {
	xspd += acceleration * x_direction;
}

if x_direction == 0 {
	if abs(xspd - (deceleration * x_direction)) <= 0 {
		xspd = 0;
	}
	else {
		xspd -= deceleration * x_last_direction;
	}
}
		

//Y
if abs(yspd + (acceleration * y_direction)) > max_spd {
	yspd = max_spd * y_direction;
}
else {
	yspd += acceleration * y_direction;
}

if y_direction == 0 {
	if abs(yspd - (deceleration * y_direction)) <= 0 {
		yspd = 0;
	}
	else {
		yspd -= deceleration * y_last_direction;
	}
}

if (xspd == 0 && yspd == 0) {
	image_speed = 0;
}
else {
	image_speed = 1;
}

//Collisions
if instance_place(x + xspd, y, obj_wall) {
	xspd = 0;
}

if instance_place(x, y + yspd, obj_wall) {
	yspd = 0;
}

x += xspd;
y += yspd;

//PICKUP OBJECT
var pickup = instance_place(x, y, obj_thing)
if (pickup > 0) && (keyboard_check_pressed(ord("Q")))
	{
	if pickup.held = false
		{
			pickup.held = true;
			exit;
		}
	if pickup.held = true
		{
			pickup.held = false;
			exit;
		}
	}


//PEE
var waterbowl = instance_place(x, y, obj_waterbowl)
if (waterbowl > 0) && (keyboard_check_pressed(ord("Z"))) && pee = false
	{
		pee = true;
	}
if (keyboard_check_pressed(ord("X"))) && pee = true
	{
	instance_create_depth(x, y, 0, obj_pee);
	pee = false;
	}

