/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

var blinker = instance_place(x, y, obj_blinker2)


if held = false && instance_place(x, y, obj_board)
	{
		if blinker > 0
			{
			x = 595;
			y = 245;
			instance_destroy(inst_5EB062B5);
			instance_destroy(inst_54F8C188);
			}
		else {
			x = 490;
			y = 190;
			}
	}
