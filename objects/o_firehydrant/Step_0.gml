/// @description Insert description here
// You can write your code in this editor

//Park Level, peeing on the hydrant destroys blocks for player to retrieve ball
if instance_place(x, y, obj_pee)
	{
		sprite_index = spr_firehydrant_pissed;
		instance_destroy(inst_2AB9D4AB);
		instance_destroy(inst_2F4F79EA);
		if sfx1 = 0 //sound effect
			{
			sfx1 = 1;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	}






