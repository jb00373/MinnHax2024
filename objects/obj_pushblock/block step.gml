/// @description Insert description here
// You can write your code in this editor


//Collision with player
if instance_place(x, y, obj_player) {
	if obj_player.x_direction = 1 && x > obj_player.x{
			xspd =  max_spd
		}
	if obj_player.x_direction = -1 && x < obj_player.x{
			xspd = -max_spd
		}
	if obj_player.y_direction = 1 && y > obj_player.y{
			yspd = max_spd
		}
	if obj_player.y_direction = -1 && y < obj_player.y{
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

x = x + xspd;
y = y + yspd;





