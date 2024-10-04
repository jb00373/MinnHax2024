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