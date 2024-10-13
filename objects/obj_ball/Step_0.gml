/// @description Insert description here
// You can write your code in this editor
if phase = 0 {
	x = 272;
	y = 50;
	phase = 1;
	}
if phase = 1 && instance_place(x, y, obj_charles) && held = false
	{
	x = 490;
	y = 50;
	phase = 2;
	}
if phase = 2 && instance_place(x, y, obj_charles) && held = false
	{
	x = 720;
	y = 330;
	phase = 3;
	}







// Inherit the parent event
event_inherited();

