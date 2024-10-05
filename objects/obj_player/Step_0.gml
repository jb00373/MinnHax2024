//MOVEMENT 
if (keyboard_check(ord("A"))) {
	xspd = -spd;
	image_xscale = -1;
}
else if (keyboard_check(ord("D"))) {
	xspd = spd;
	image_xscale = 1;
}
else {
	xspd = 0;
}
if (keyboard_check(ord("W"))) {
	yspd = -spd;
}
else if (keyboard_check(ord("S"))) {
	yspd = spd;
	image_yscale = 1;
}
else {
	yspd = 0;
}

if (xspd == 0 && yspd == 0) {
	image_speed = 0;
}
else {
	image_speed = 1;
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

