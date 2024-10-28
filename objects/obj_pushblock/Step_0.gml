/// @description Insert description here
// You can write your code in this editor


//Collision with player
if instance_place(x, y, obj_player) {
	if obj_player.x_direction = 1 && x > obj_player.x{
			x = x + max_spd
		}
	if obj_player.x_direction = -1 && x < obj_player.x{
			x = x - max_spd
		}
	if obj_player.y_direction = 1 && y > obj_player.y{
			y = y + max_spd
		}
	if obj_player.y_direction = -1 && y < obj_player.y{
			y = y - max_spd
		}
}

//resets box if it goes out of bounds
if instance_place(x, y, obj_hedge)
	{
	resetter ++;	
	}
if instance_place(x, y, obj_wall)
	{
	resetter ++;	
	}
if resetter = 200
	{
	if room = r_home
		{
			x = 400
			y = 300
		}
	if room = r_home
		{
			x = 480
			y = 224
		}
	}







