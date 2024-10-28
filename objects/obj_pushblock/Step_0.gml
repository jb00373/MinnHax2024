//Collision with player
if place_meeting(x + obj_player.xspd, y, obj_player) {
	if obj_player.x_direction == 1 && bbox_left > obj_player.x {
		xspd =  max_spd
	}
	else if obj_player.x_direction == -1 && bbox_right < obj_player.x {
		xspd = -max_spd
	}
}
if place_meeting(x, y + obj_player.yspd, obj_player) {
	if obj_player.y_direction == 1 && bbox_top > obj_player.y {
		yspd =  max_spd
	}
	else if obj_player.y_direction == -1 && y < obj_player.y {
		yspd = -max_spd
	}
}
else {
	xspd = 0;
	yspd = 0;
}

//Collisions
if instance_place(x + xspd, y, obj_wall) {
	xspd = 0;
}

if instance_place(x, y + yspd, obj_wall) {
	yspd = 0;
}

//Collisions
if instance_place(x + xspd, y, obj_pit_edge) {
	xspd = 0;
}

if instance_place(x, y + yspd, obj_pit_edge) {
	yspd = 0;
}

x = x + xspd;
y = y + yspd;





