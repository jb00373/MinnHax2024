/// @description Insert description here
// You can write your code in this editor

if held = true
	{
	x = obj_player.x
	y = obj_player.y
	}

if room = r_chess && held = false && instance_place(x, y, obj_board) && piece = 0
	{
		x = 490;
		y = 190;
	}




